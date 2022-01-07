
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct lego_ev3_battery {int technology; int v_max; int v_min; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;


 int POWER_SUPPLY_TECHNOLOGY_UNKNOWN ;
 struct lego_ev3_battery* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int lego_ev3_battery_set_property(struct power_supply *psy,
      enum power_supply_property psp,
      const union power_supply_propval *val)
{
 struct lego_ev3_battery *batt = power_supply_get_drvdata(psy);

 switch (psp) {
 case 129:
  if (batt->technology != POWER_SUPPLY_TECHNOLOGY_UNKNOWN)
   return -EINVAL;
  switch (val->intval) {
  case 128:
   batt->technology = 128;
   batt->v_max = 7800000;
   batt->v_min = 5400000;
   break;
  default:
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
