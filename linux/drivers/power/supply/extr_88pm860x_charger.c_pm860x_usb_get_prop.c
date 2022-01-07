
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct pm860x_charger_info {int online; int state; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int ENODEV ;
 int FSM_FASTCHARGE ;
 int FSM_PRECHARGE ;


 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 struct pm860x_charger_info* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int pm860x_usb_get_prop(struct power_supply *psy,
          enum power_supply_property psp,
          union power_supply_propval *val)
{
 struct pm860x_charger_info *info = power_supply_get_drvdata(psy);

 switch (psp) {
 case 128:
  if (info->state == FSM_FASTCHARGE ||
    info->state == FSM_PRECHARGE)
   val->intval = POWER_SUPPLY_STATUS_CHARGING;
  else
   val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
  break;
 case 129:
  val->intval = info->online;
  break;
 default:
  return -ENODEV;
 }
 return 0;
}
