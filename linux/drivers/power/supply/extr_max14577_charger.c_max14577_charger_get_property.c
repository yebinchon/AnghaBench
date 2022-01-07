
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int strval; int intval; } ;
struct power_supply {int dummy; } ;
struct max14577_charger {TYPE_1__* max14577; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {size_t dev_type; } ;


 int ARRAY_SIZE (int *) ;
 int BUILD_BUG_ON (int) ;
 int EINVAL ;
 int MAXIM_DEVICE_TYPE_NUM ;







 int manufacturer ;
 int max14577_get_battery_health (struct max14577_charger*,int *) ;
 int max14577_get_charge_type (struct max14577_charger*,int *) ;
 int max14577_get_charger_state (struct max14577_charger*,int *) ;
 int max14577_get_online (struct max14577_charger*,int *) ;
 int max14577_get_present (struct max14577_charger*,int *) ;
 int * model_names ;
 struct max14577_charger* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int max14577_charger_get_property(struct power_supply *psy,
       enum power_supply_property psp,
       union power_supply_propval *val)
{
 struct max14577_charger *chg = power_supply_get_drvdata(psy);
 int ret = 0;

 switch (psp) {
 case 128:
  ret = max14577_get_charger_state(chg, &val->intval);
  break;
 case 134:
  ret = max14577_get_charge_type(chg, &val->intval);
  break;
 case 133:
  ret = max14577_get_battery_health(chg, &val->intval);
  break;
 case 129:
  ret = max14577_get_present(chg, &val->intval);
  break;
 case 130:
  ret = max14577_get_online(chg, &val->intval);
  break;
 case 131:
  BUILD_BUG_ON(ARRAY_SIZE(model_names) != MAXIM_DEVICE_TYPE_NUM);
  val->strval = model_names[chg->max14577->dev_type];
  break;
 case 132:
  val->strval = manufacturer;
  break;
 default:
  return -EINVAL;
 }

 return ret;
}
