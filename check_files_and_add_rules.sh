#!/bin/bash

if [[ -d /hana/log ]]
then
    echo -e "\n#************************************************************************\n#********************    ONLY For HANA SAP Servers    *******************\n#************************************************************************" |tee -a /etc/audit/rules.d/audit.rules
    echo "-w /hana/log -p wa -k hana_log -k audit-wazuh-w -k audit-wazuh-r" |tee -a /etc/audit/rules.d/audit.rules
fi

if [[ -d /hana/shared ]]
then
    echo "-w /hana/shared -p wa -k hana_shared -k audit-wazuh-w -k audit-wazuh-r" |tee -a /etc/audit/rules.d/audit.rules
fi

if [[ -d /hana/backup ]]
then
    echo "-w /hana/backup -p wa -k hana_backup -k audit-wazuh-w -k audit-wazuh-r" |tee -a /etc/audit/rules.d/audit.rules
fi
