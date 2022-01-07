
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union power_supply_propval {int intval; int strval; } ;
struct power_supply {int dummy; } ;
struct TYPE_3__ {int ichaverage_res; int vbat_res; } ;
struct da9030_charger {TYPE_2__* battery_info; TYPE_1__ adc; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_4__ {int technology; int voltage_max_design; int voltage_min_design; int name; } ;
 int da9030_battery_check_health (struct da9030_charger*,union power_supply_propval*) ;
 int da9030_battery_check_status (struct da9030_charger*,union power_supply_propval*) ;
 int da9030_reg_to_mA (int ) ;
 int da9030_reg_to_mV (int ) ;
 struct da9030_charger* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int da9030_battery_get_property(struct power_supply *psy,
       enum power_supply_property psp,
       union power_supply_propval *val)
{
 struct da9030_charger *charger = power_supply_get_drvdata(psy);

 switch (psp) {
 case 132:
  da9030_battery_check_status(charger, val);
  break;
 case 134:
  da9030_battery_check_health(charger, val);
  break;
 case 131:
  val->intval = charger->battery_info->technology;
  break;
 case 130:
  val->intval = charger->battery_info->voltage_max_design;
  break;
 case 129:
  val->intval = charger->battery_info->voltage_min_design;
  break;
 case 128:
  val->intval = da9030_reg_to_mV(charger->adc.vbat_res) * 1000;
  break;
 case 135:
  val->intval =
   da9030_reg_to_mA(charger->adc.ichaverage_res) * 1000;
  break;
 case 133:
  val->strval = charger->battery_info->name;
  break;
 default:
  break;
 }

 return 0;
}
