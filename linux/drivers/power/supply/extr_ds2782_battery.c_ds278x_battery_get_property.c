
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct ds278x_info {TYPE_1__* ops; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {int (* get_battery_capacity ) (struct ds278x_info*,int *) ;int (* get_battery_voltage ) (struct ds278x_info*,int *) ;int (* get_battery_current ) (struct ds278x_info*,int *) ;} ;


 int EINVAL ;





 int ds278x_get_status (struct ds278x_info*,int *) ;
 int ds278x_get_temp (struct ds278x_info*,int *) ;
 int stub1 (struct ds278x_info*,int *) ;
 int stub2 (struct ds278x_info*,int *) ;
 int stub3 (struct ds278x_info*,int *) ;
 struct ds278x_info* to_ds278x_info (struct power_supply*) ;

__attribute__((used)) static int ds278x_battery_get_property(struct power_supply *psy,
           enum power_supply_property prop,
           union power_supply_propval *val)
{
 struct ds278x_info *info = to_ds278x_info(psy);
 int ret;

 switch (prop) {
 case 130:
  ret = ds278x_get_status(info, &val->intval);
  break;

 case 132:
  ret = info->ops->get_battery_capacity(info, &val->intval);
  break;

 case 128:
  ret = info->ops->get_battery_voltage(info, &val->intval);
  break;

 case 131:
  ret = info->ops->get_battery_current(info, &val->intval);
  break;

 case 129:
  ret = ds278x_get_temp(info, &val->intval);
  break;

 default:
  ret = -EINVAL;
 }

 return ret;
}
