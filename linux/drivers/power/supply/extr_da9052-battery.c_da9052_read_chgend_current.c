
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052_battery {scalar_t__ status; int da9052; } ;


 int DA9052_ICHGEND_ICHGEND ;
 int DA9052_ICHG_END_REG ;
 int EINVAL ;
 scalar_t__ POWER_SUPPLY_STATUS_DISCHARGING ;
 int da9052_reg_read (int ,int ) ;
 int ichg_reg_to_mA (int) ;

__attribute__((used)) static int da9052_read_chgend_current(struct da9052_battery *bat,
           int *current_mA)
{
 int ret;

 if (bat->status == POWER_SUPPLY_STATUS_DISCHARGING)
  return -EINVAL;

 ret = da9052_reg_read(bat->da9052, DA9052_ICHG_END_REG);
 if (ret < 0)
  return ret;

 *current_mA = ichg_reg_to_mA(ret & DA9052_ICHGEND_ICHGEND);

 return 0;
}
