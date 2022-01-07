
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct z2_charger {int bat_status; struct z2_battery_info* info; } ;
struct z2_battery_info {int batt_tech; int max_voltage; int min_voltage; int batt_I2C_reg; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;






 struct z2_charger* power_supply_get_drvdata (struct power_supply*) ;
 int z2_read_bat (struct z2_charger*) ;

__attribute__((used)) static int z2_batt_get_property(struct power_supply *batt_ps,
       enum power_supply_property psp,
       union power_supply_propval *val)
{
 struct z2_charger *charger = power_supply_get_drvdata(batt_ps);
 struct z2_battery_info *info = charger->info;

 switch (psp) {
 case 132:
  val->intval = charger->bat_status;
  break;
 case 131:
  val->intval = info->batt_tech;
  break;
 case 128:
  if (info->batt_I2C_reg >= 0)
   val->intval = z2_read_bat(charger);
  else
   return -EINVAL;
  break;
 case 130:
  if (info->max_voltage >= 0)
   val->intval = info->max_voltage;
  else
   return -EINVAL;
  break;
 case 129:
  if (info->min_voltage >= 0)
   val->intval = info->min_voltage;
  else
   return -EINVAL;
  break;
 case 133:
  val->intval = 1;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
