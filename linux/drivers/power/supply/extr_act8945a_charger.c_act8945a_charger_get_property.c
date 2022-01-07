
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int strval; int intval; } ;
struct regmap {int dummy; } ;
struct power_supply {int dummy; } ;
struct act8945a_charger {struct regmap* regmap; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int POWER_SUPPLY_TECHNOLOGY_LION ;
 int act8945a_charger_manufacturer ;
 int act8945a_charger_model ;
 int act8945a_get_battery_health (struct regmap*,int *) ;
 int act8945a_get_capacity_level (struct act8945a_charger*,struct regmap*,int *) ;
 int act8945a_get_charge_type (struct regmap*,int *) ;
 int act8945a_get_charger_state (struct regmap*,int *) ;
 int act8945a_get_current_max (struct act8945a_charger*,struct regmap*,int *) ;
 struct act8945a_charger* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int act8945a_charger_get_property(struct power_supply *psy,
      enum power_supply_property prop,
      union power_supply_propval *val)
{
 struct act8945a_charger *charger = power_supply_get_drvdata(psy);
 struct regmap *regmap = charger->regmap;
 int ret = 0;

 switch (prop) {
 case 129:
  ret = act8945a_get_charger_state(regmap, &val->intval);
  break;
 case 134:
  ret = act8945a_get_charge_type(regmap, &val->intval);
  break;
 case 128:
  val->intval = POWER_SUPPLY_TECHNOLOGY_LION;
  break;
 case 132:
  ret = act8945a_get_battery_health(regmap, &val->intval);
  break;
 case 135:
  ret = act8945a_get_capacity_level(charger,
        regmap, &val->intval);
  break;
 case 133:
  ret = act8945a_get_current_max(charger,
            regmap, &val->intval);
  break;
 case 130:
  val->strval = act8945a_charger_model;
  break;
 case 131:
  val->strval = act8945a_charger_manufacturer;
  break;
 default:
  return -EINVAL;
 }

 return ret;
}
