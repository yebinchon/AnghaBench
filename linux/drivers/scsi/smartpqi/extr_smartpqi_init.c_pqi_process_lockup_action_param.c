
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int action; int name; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int DRIVER_NAME_SHORT ;
 int pqi_lockup_action ;
 int pqi_lockup_action_param ;
 TYPE_1__* pqi_lockup_actions ;
 int pr_warn (char*,int ,int ) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void pqi_process_lockup_action_param(void)
{
 unsigned int i;

 if (!pqi_lockup_action_param)
  return;

 for (i = 0; i < ARRAY_SIZE(pqi_lockup_actions); i++) {
  if (strcmp(pqi_lockup_action_param,
   pqi_lockup_actions[i].name) == 0) {
   pqi_lockup_action = pqi_lockup_actions[i].action;
   return;
  }
 }

 pr_warn("%s: invalid lockup action setting \"%s\" - supported settings: none, reboot, panic\n",
  DRIVER_NAME_SHORT, pqi_lockup_action_param);
}
