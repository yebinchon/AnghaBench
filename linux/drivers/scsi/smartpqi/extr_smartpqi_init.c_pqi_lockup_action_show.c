
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {scalar_t__ action; char* name; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ pqi_lockup_action ;
 TYPE_1__* pqi_lockup_actions ;
 scalar_t__ snprintf (char*,scalar_t__,char*,...) ;

__attribute__((used)) static ssize_t pqi_lockup_action_show(struct device *dev,
 struct device_attribute *attr, char *buffer)
{
 int count = 0;
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(pqi_lockup_actions); i++) {
  if (pqi_lockup_actions[i].action == pqi_lockup_action)
   count += snprintf(buffer + count, PAGE_SIZE - count,
    "[%s] ", pqi_lockup_actions[i].name);
  else
   count += snprintf(buffer + count, PAGE_SIZE - count,
    "%s ", pqi_lockup_actions[i].name);
 }

 count += snprintf(buffer + count, PAGE_SIZE - count, "\n");

 return count;
}
