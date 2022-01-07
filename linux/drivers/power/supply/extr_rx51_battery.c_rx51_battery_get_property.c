
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct rx51_device_info {int dummy; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 scalar_t__ INT_MAX ;
 scalar_t__ INT_MIN ;






 int POWER_SUPPLY_TECHNOLOGY_LION ;
 struct rx51_device_info* power_supply_get_drvdata (struct power_supply*) ;
 int rx51_battery_read_capacity (struct rx51_device_info*) ;
 int rx51_battery_read_temperature (struct rx51_device_info*) ;
 int rx51_battery_read_voltage (struct rx51_device_info*) ;

__attribute__((used)) static int rx51_battery_get_property(struct power_supply *psy,
     enum power_supply_property psp,
     union power_supply_propval *val)
{
 struct rx51_device_info *di = power_supply_get_drvdata(psy);

 switch (psp) {
 case 131:
  val->intval = POWER_SUPPLY_TECHNOLOGY_LION;
  break;
 case 129:
  val->intval = 4200000;
  break;
 case 132:
  val->intval = rx51_battery_read_voltage(di) ? 1 : 0;
  break;
 case 128:
  val->intval = rx51_battery_read_voltage(di);
  break;
 case 130:
  val->intval = rx51_battery_read_temperature(di);
  break;
 case 133:
  val->intval = rx51_battery_read_capacity(di);
  break;
 default:
  return -EINVAL;
 }

 if (val->intval == INT_MAX || val->intval == INT_MIN)
  return -EINVAL;

 return 0;
}
