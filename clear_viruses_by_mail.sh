#!/bin/sh

for file in `cat /var/log/phpmail.log  | grep "eval()" | awk '{print $6}' | sed  's/\[//' | sed 's/([0-9]*)//' | uniq `;
do
echo $file;
rm -rvf $file
done
