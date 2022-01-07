
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_OK ;


 int power_limit_state_restore () ;
 int power_limit_state_save () ;

__attribute__((used)) static int rapl_pm_callback(struct notifier_block *nb,
       unsigned long mode, void *_unused)
{
 switch (mode) {
 case 128:
  power_limit_state_save();
  break;
 case 129:
  power_limit_state_restore();
  break;
 }
 return NOTIFY_OK;
}
