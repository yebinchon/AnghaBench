
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct axp20x_batt_ps {TYPE_1__* data; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {int (* set_max_voltage ) (struct axp20x_batt_ps*,int ) ;} ;


 int EINVAL ;




 int axp20x_set_constant_charge_current (struct axp20x_batt_ps*,int ) ;
 int axp20x_set_max_constant_charge_current (struct axp20x_batt_ps*,int ) ;
 int axp20x_set_voltage_min_design (struct axp20x_batt_ps*,int ) ;
 struct axp20x_batt_ps* power_supply_get_drvdata (struct power_supply*) ;
 int stub1 (struct axp20x_batt_ps*,int ) ;

__attribute__((used)) static int axp20x_battery_set_prop(struct power_supply *psy,
       enum power_supply_property psp,
       const union power_supply_propval *val)
{
 struct axp20x_batt_ps *axp20x_batt = power_supply_get_drvdata(psy);

 switch (psp) {
 case 128:
  return axp20x_set_voltage_min_design(axp20x_batt, val->intval);

 case 129:
  return axp20x_batt->data->set_max_voltage(axp20x_batt, val->intval);

 case 131:
  return axp20x_set_constant_charge_current(axp20x_batt,
         val->intval);
 case 130:
  return axp20x_set_max_constant_charge_current(axp20x_batt,
             val->intval);

 default:
  return -EINVAL;
 }
}
