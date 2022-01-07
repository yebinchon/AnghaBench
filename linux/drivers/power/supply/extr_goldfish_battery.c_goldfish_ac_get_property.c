
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {void* intval; } ;
struct power_supply {int dummy; } ;
struct goldfish_battery_data {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int BATTERY_AC_ONLINE ;
 int BATTERY_CURRENT_MAX ;
 int BATTERY_VOLTAGE_MAX ;
 int EINVAL ;
 void* GOLDFISH_BATTERY_READ (struct goldfish_battery_data*,int ) ;



 struct goldfish_battery_data* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int goldfish_ac_get_property(struct power_supply *psy,
   enum power_supply_property psp,
   union power_supply_propval *val)
{
 struct goldfish_battery_data *data = power_supply_get_drvdata(psy);
 int ret = 0;

 switch (psp) {
 case 129:
  val->intval = GOLDFISH_BATTERY_READ(data, BATTERY_AC_ONLINE);
  break;
 case 128:
  val->intval = GOLDFISH_BATTERY_READ(data, BATTERY_VOLTAGE_MAX);
  break;
 case 130:
  val->intval = GOLDFISH_BATTERY_READ(data, BATTERY_CURRENT_MAX);
  break;
 default:
  ret = -EINVAL;
  break;
 }
 return ret;
}
