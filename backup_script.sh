#!/bin/bash

# Author: Sude Buket Kipri
# Created: 19th February 2023
# Last Modified: 19th February 2023

# Description:
# Creates a backup in the current directory of
# all files in the home directory

echo "Hello there, ${USER^}"
echo "I will now back up your home directory, $HOME"

currentdir=$(pwd)

echo "I will create save the backup file in $currentdir"

tar -cf "$currentdir/my_backup_$(date +%d-%m-%Y_%H-%M-%S).tar" $HOME 2>/dev/null

echo "Backup completed successfully"

exit 0
