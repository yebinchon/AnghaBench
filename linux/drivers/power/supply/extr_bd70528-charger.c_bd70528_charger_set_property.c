
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct bd70528_psy {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;


 struct bd70528_psy* power_supply_get_drvdata (struct power_supply*) ;
 int set_charge_current (struct bd70528_psy*,int) ;
 int set_current_limit (struct bd70528_psy*,int) ;

__attribute__((used)) static int bd70528_charger_set_property(struct power_supply *psy,
     enum power_supply_property psp,
     const union power_supply_propval *val)
{
 struct bd70528_psy *bdpsy = power_supply_get_drvdata(psy);

 switch (psp) {
 case 128:
  return set_current_limit(bdpsy, val->intval / 1000);
 case 129:
  return set_charge_current(bdpsy, val->intval / 1000);
 default:
  break;
 }
 return -EINVAL;
}
