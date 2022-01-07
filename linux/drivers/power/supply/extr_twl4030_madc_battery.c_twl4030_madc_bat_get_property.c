
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct twl4030_madc_battery {TYPE_1__* pdata; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {int capacity; } ;


 int EINVAL ;
 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int POWER_SUPPLY_TECHNOLOGY_LION ;
 struct twl4030_madc_battery* power_supply_get_drvdata (struct power_supply*) ;
 int twl4030_madc_bat_get_charging_status (struct twl4030_madc_battery*) ;
 int twl4030_madc_bat_get_current (struct twl4030_madc_battery*) ;
 int twl4030_madc_bat_get_temp (struct twl4030_madc_battery*) ;
 int twl4030_madc_bat_get_voltage (struct twl4030_madc_battery*) ;
 int twl4030_madc_bat_voltscale (struct twl4030_madc_battery*,int) ;

__attribute__((used)) static int twl4030_madc_bat_get_property(struct power_supply *psy,
     enum power_supply_property psp,
     union power_supply_propval *val)
{
 struct twl4030_madc_battery *bat = power_supply_get_drvdata(psy);

 switch (psp) {
 case 132:
  if (twl4030_madc_bat_voltscale(bat,
    twl4030_madc_bat_get_voltage(bat)) > 95)
   val->intval = POWER_SUPPLY_STATUS_FULL;
  else {
   if (twl4030_madc_bat_get_charging_status(bat))
    val->intval = POWER_SUPPLY_STATUS_CHARGING;
   else
    val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
  }
  break;
 case 128:
  val->intval = twl4030_madc_bat_get_voltage(bat) * 1000;
  break;
 case 131:
  val->intval = POWER_SUPPLY_TECHNOLOGY_LION;
  break;
 case 134:
  val->intval = twl4030_madc_bat_get_current(bat);
  break;
 case 133:

  val->intval = 1;
  break;
 case 135: {
   int percent = twl4030_madc_bat_voltscale(bat,
     twl4030_madc_bat_get_voltage(bat));
   val->intval = (percent * bat->pdata->capacity) / 100;
   break;
  }
 case 137:
  val->intval = twl4030_madc_bat_voltscale(bat,
     twl4030_madc_bat_get_voltage(bat));
  break;
 case 136:
  val->intval = bat->pdata->capacity;
  break;
 case 130:
  val->intval = twl4030_madc_bat_get_temp(bat);
  break;
 case 129: {
   int percent = twl4030_madc_bat_voltscale(bat,
     twl4030_madc_bat_get_voltage(bat));

   int chg = (percent * (bat->pdata->capacity/1000))/100;


   val->intval = (3600l * chg) / 400;
   break;
  }
 default:
  return -EINVAL;
 }

 return 0;
}
