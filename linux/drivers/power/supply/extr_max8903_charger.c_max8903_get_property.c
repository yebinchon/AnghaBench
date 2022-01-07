
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct max8903_data {int fault; int ta_in; int usb_in; TYPE_1__* pdata; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {int chg; } ;


 int EINVAL ;
 int POWER_SUPPLY_HEALTH_GOOD ;
 int POWER_SUPPLY_HEALTH_UNSPEC_FAILURE ;



 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int POWER_SUPPLY_STATUS_UNKNOWN ;
 int gpio_get_value (int ) ;
 int gpio_is_valid (int ) ;
 struct max8903_data* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int max8903_get_property(struct power_supply *psy,
  enum power_supply_property psp,
  union power_supply_propval *val)
{
 struct max8903_data *data = power_supply_get_drvdata(psy);

 switch (psp) {
 case 128:
  val->intval = POWER_SUPPLY_STATUS_UNKNOWN;
  if (gpio_is_valid(data->pdata->chg)) {
   if (gpio_get_value(data->pdata->chg) == 0)
    val->intval = POWER_SUPPLY_STATUS_CHARGING;
   else if (data->usb_in || data->ta_in)
    val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
   else
    val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
  }
  break;
 case 129:
  val->intval = 0;
  if (data->usb_in || data->ta_in)
   val->intval = 1;
  break;
 case 130:
  val->intval = POWER_SUPPLY_HEALTH_GOOD;
  if (data->fault)
   val->intval = POWER_SUPPLY_HEALTH_UNSPEC_FAILURE;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
