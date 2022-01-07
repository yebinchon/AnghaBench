
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int strval; int intval; } ;
struct rt9455_info {int dummy; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int ENODATA ;
 int POWER_SUPPLY_SCOPE_SYSTEM ;
 int RT9455_MANUFACTURER ;
 int RT9455_MODEL_NAME ;
 struct rt9455_info* power_supply_get_drvdata (struct power_supply*) ;
 int rt9455_charger_get_battery_presence (struct rt9455_info*,union power_supply_propval*) ;
 int rt9455_charger_get_current (struct rt9455_info*,union power_supply_propval*) ;
 int rt9455_charger_get_current_max (struct rt9455_info*,union power_supply_propval*) ;
 int rt9455_charger_get_health (struct rt9455_info*,union power_supply_propval*) ;
 int rt9455_charger_get_online (struct rt9455_info*,union power_supply_propval*) ;
 int rt9455_charger_get_status (struct rt9455_info*,union power_supply_propval*) ;
 int rt9455_charger_get_term_current (struct rt9455_info*,union power_supply_propval*) ;
 int rt9455_charger_get_voltage (struct rt9455_info*,union power_supply_propval*) ;
 int rt9455_charger_get_voltage_max (struct rt9455_info*,union power_supply_propval*) ;

__attribute__((used)) static int rt9455_charger_get_property(struct power_supply *psy,
           enum power_supply_property psp,
           union power_supply_propval *val)
{
 struct rt9455_info *info = power_supply_get_drvdata(psy);

 switch (psp) {
 case 128:
  return rt9455_charger_get_status(info, val);
 case 134:
  return rt9455_charger_get_health(info, val);
 case 130:
  return rt9455_charger_get_battery_presence(info, val);
 case 131:
  return rt9455_charger_get_online(info, val);
 case 138:
  return rt9455_charger_get_current(info, val);
 case 137:
  return rt9455_charger_get_current_max(info, val);
 case 136:
  return rt9455_charger_get_voltage(info, val);
 case 135:
  return rt9455_charger_get_voltage_max(info, val);
 case 129:
  val->intval = POWER_SUPPLY_SCOPE_SYSTEM;
  return 0;
 case 139:
  return rt9455_charger_get_term_current(info, val);
 case 132:
  val->strval = RT9455_MODEL_NAME;
  return 0;
 case 133:
  val->strval = RT9455_MANUFACTURER;
  return 0;
 default:
  return -ENODATA;
 }
}
