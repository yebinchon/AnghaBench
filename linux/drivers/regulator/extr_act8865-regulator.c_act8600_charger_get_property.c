
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct regmap {int dummy; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;

 int act8600_charger_get_status (struct regmap*) ;
 struct regmap* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int act8600_charger_get_property(struct power_supply *psy,
  enum power_supply_property psp, union power_supply_propval *val)
{
 struct regmap *map = power_supply_get_drvdata(psy);
 int ret;

 switch (psp) {
 case 128:
  ret = act8600_charger_get_status(map);
  if (ret < 0)
   return ret;

  val->intval = ret;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
