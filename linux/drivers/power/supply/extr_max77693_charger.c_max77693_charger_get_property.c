
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int strval; int intval; } ;
struct regmap {int dummy; } ;
struct power_supply {int dummy; } ;
struct max77693_charger {TYPE_1__* max77693; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {struct regmap* regmap; } ;


 int EINVAL ;







 int max77693_charger_manufacturer ;
 int max77693_charger_model ;
 int max77693_get_battery_health (struct regmap*,int *) ;
 int max77693_get_charge_type (struct regmap*,int *) ;
 int max77693_get_charger_state (struct regmap*,int *) ;
 int max77693_get_online (struct regmap*,int *) ;
 int max77693_get_present (struct regmap*,int *) ;
 struct max77693_charger* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int max77693_charger_get_property(struct power_supply *psy,
       enum power_supply_property psp,
       union power_supply_propval *val)
{
 struct max77693_charger *chg = power_supply_get_drvdata(psy);
 struct regmap *regmap = chg->max77693->regmap;
 int ret = 0;

 switch (psp) {
 case 128:
  ret = max77693_get_charger_state(regmap, &val->intval);
  break;
 case 134:
  ret = max77693_get_charge_type(regmap, &val->intval);
  break;
 case 133:
  ret = max77693_get_battery_health(regmap, &val->intval);
  break;
 case 129:
  ret = max77693_get_present(regmap, &val->intval);
  break;
 case 130:
  ret = max77693_get_online(regmap, &val->intval);
  break;
 case 131:
  val->strval = max77693_charger_model;
  break;
 case 132:
  val->strval = max77693_charger_manufacturer;
  break;
 default:
  return -EINVAL;
 }

 return ret;
}
