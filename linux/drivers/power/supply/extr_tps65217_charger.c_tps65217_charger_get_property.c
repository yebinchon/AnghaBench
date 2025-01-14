
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct tps65217_charger {int online; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int POWER_SUPPLY_PROP_ONLINE ;
 struct tps65217_charger* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int tps65217_charger_get_property(struct power_supply *psy,
      enum power_supply_property psp,
      union power_supply_propval *val)
{
 struct tps65217_charger *charger = power_supply_get_drvdata(psy);

 if (psp == POWER_SUPPLY_PROP_ONLINE) {
  val->intval = charger->online;
  return 0;
 }
 return -EINVAL;
}
