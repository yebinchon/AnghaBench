
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; int strval; } ;
struct power_supply {int dummy; } ;
struct bd70528_psy {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int bd70528_charger_manufacturer ;
 int bd70528_charger_model ;
 int bd70528_get_battery_health (struct bd70528_psy*,int*) ;
 int bd70528_get_charge_type (struct bd70528_psy*,int*) ;
 int bd70528_get_charger_status (struct bd70528_psy*,int*) ;
 int bd70528_get_online (struct bd70528_psy*,int*) ;
 int bd70528_get_present (struct bd70528_psy*,int*) ;
 int get_charge_current (struct bd70528_psy*,int*) ;
 int get_current_limit (struct bd70528_psy*,int*) ;
 struct bd70528_psy* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int bd70528_charger_get_property(struct power_supply *psy,
     enum power_supply_property psp,
     union power_supply_propval *val)
{
 struct bd70528_psy *bdpsy = power_supply_get_drvdata(psy);
 int ret = 0;

 switch (psp) {
 case 128:
  return bd70528_get_charger_status(bdpsy, &val->intval);
 case 136:
  return bd70528_get_charge_type(bdpsy, &val->intval);
 case 134:
  return bd70528_get_battery_health(bdpsy, &val->intval);
 case 129:
  return bd70528_get_present(bdpsy, &val->intval);
 case 133:
  ret = get_current_limit(bdpsy, &val->intval);
  val->intval *= 1000;
  return ret;
 case 135:
  ret = get_charge_current(bdpsy, &val->intval);
  val->intval *= 1000;
  return ret;
 case 130:
  return bd70528_get_online(bdpsy, &val->intval);
 case 131:
  val->strval = bd70528_charger_model;
  return 0;
 case 132:
  val->strval = bd70528_charger_manufacturer;
  return 0;
 default:
  break;
 }

 return -EINVAL;
}
