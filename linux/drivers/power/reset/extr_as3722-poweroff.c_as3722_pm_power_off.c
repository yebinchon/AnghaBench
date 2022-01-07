
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; int as3722; } ;


 int AS3722_POWER_OFF ;
 int AS3722_RESET_CONTROL_REG ;
 TYPE_1__* as3722_pm_poweroff ;
 int as3722_update_bits (int ,int ,int ,int ) ;
 int dev_err (int ,char*,int) ;
 int pr_err (char*) ;

__attribute__((used)) static void as3722_pm_power_off(void)
{
 int ret;

 if (!as3722_pm_poweroff) {
  pr_err("AS3722 poweroff is not initialised\n");
  return;
 }

 ret = as3722_update_bits(as3722_pm_poweroff->as3722,
  AS3722_RESET_CONTROL_REG, AS3722_POWER_OFF, AS3722_POWER_OFF);
 if (ret < 0)
  dev_err(as3722_pm_poweroff->dev,
   "RESET_CONTROL_REG update failed, %d\n", ret);
}
