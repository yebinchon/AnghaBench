
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct rt5033_battery {int client; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;





 struct rt5033_battery* power_supply_get_drvdata (struct power_supply*) ;
 int rt5033_battery_get_capacity (int ) ;
 int rt5033_battery_get_present (int ) ;
 int rt5033_battery_get_watt_prop (int ,int) ;

__attribute__((used)) static int rt5033_battery_get_property(struct power_supply *psy,
  enum power_supply_property psp,
  union power_supply_propval *val)
{
 struct rt5033_battery *battery = power_supply_get_drvdata(psy);

 switch (psp) {
 case 129:
 case 130:
 case 128:
  val->intval = rt5033_battery_get_watt_prop(battery->client,
         psp);
  break;
 case 131:
  val->intval = rt5033_battery_get_present(battery->client);
  break;
 case 132:
  val->intval = rt5033_battery_get_capacity(battery->client);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
