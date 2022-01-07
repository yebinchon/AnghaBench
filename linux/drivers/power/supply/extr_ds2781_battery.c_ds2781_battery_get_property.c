
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; int strval; } ;
struct power_supply {int dummy; } ;
struct ds2781_device_info {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int CURRENT_AVG ;
 int CURRENT_NOW ;
 int EINVAL ;
 int ds2781_get_accumulated_current (struct ds2781_device_info*,int *) ;
 int ds2781_get_capacity (struct ds2781_device_info*,int *) ;
 int ds2781_get_charge_now (struct ds2781_device_info*,int *) ;
 int ds2781_get_current (struct ds2781_device_info*,int ,int *) ;
 int ds2781_get_status (struct ds2781_device_info*,int *) ;
 int ds2781_get_temperature (struct ds2781_device_info*,int *) ;
 int ds2781_get_voltage (struct ds2781_device_info*,int *) ;
 int manufacturer ;
 int model ;
 struct ds2781_device_info* to_ds2781_device_info (struct power_supply*) ;

__attribute__((used)) static int ds2781_battery_get_property(struct power_supply *psy,
 enum power_supply_property psp,
 union power_supply_propval *val)
{
 int ret = 0;
 struct ds2781_device_info *dev_info = to_ds2781_device_info(psy);

 switch (psp) {
 case 128:
  ret = ds2781_get_voltage(dev_info, &val->intval);
  break;

 case 129:
  ret = ds2781_get_temperature(dev_info, &val->intval);
  break;

 case 131:
  val->strval = model;
  break;

 case 132:
  val->strval = manufacturer;
  break;

 case 133:
  ret = ds2781_get_current(dev_info, CURRENT_NOW, &val->intval);
  break;

 case 134:
  ret = ds2781_get_current(dev_info, CURRENT_AVG, &val->intval);
  break;

 case 130:
  ret = ds2781_get_status(dev_info, &val->intval);
  break;

 case 137:
  ret = ds2781_get_capacity(dev_info, &val->intval);
  break;

 case 136:
  ret = ds2781_get_accumulated_current(dev_info, &val->intval);
  break;

 case 135:
  ret = ds2781_get_charge_now(dev_info, &val->intval);
  break;

 default:
  ret = -EINVAL;
 }

 return ret;
}
