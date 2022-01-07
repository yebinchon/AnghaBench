
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
typedef int action_name_buffer ;
struct TYPE_3__ {int action; int name; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 size_t EINVAL ;
 int pqi_lockup_action ;
 TYPE_1__* pqi_lockup_actions ;
 scalar_t__ strcmp (char*,int ) ;
 int strlcpy (char*,char const*,int) ;
 char* strstrip (char*) ;

__attribute__((used)) static ssize_t pqi_lockup_action_store(struct device *dev,
 struct device_attribute *attr, const char *buffer, size_t count)
{
 unsigned int i;
 char *action_name;
 char action_name_buffer[32];

 strlcpy(action_name_buffer, buffer, sizeof(action_name_buffer));
 action_name = strstrip(action_name_buffer);

 for (i = 0; i < ARRAY_SIZE(pqi_lockup_actions); i++) {
  if (strcmp(action_name, pqi_lockup_actions[i].name) == 0) {
   pqi_lockup_action = pqi_lockup_actions[i].action;
   return count;
  }
 }

 return -EINVAL;
}
