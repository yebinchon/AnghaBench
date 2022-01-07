
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {long intval; } ;
struct power_supply {int dummy; } ;
struct ds2760_device_info {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EPERM ;


 int ds2760_battery_set_current_accum (struct ds2760_device_info*,long) ;
 int ds2760_battery_write_active_full (struct ds2760_device_info*,long) ;
 struct ds2760_device_info* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int ds2760_battery_set_property(struct power_supply *psy,
           enum power_supply_property psp,
           const union power_supply_propval *val)
{
 struct ds2760_device_info *di = power_supply_get_drvdata(psy);

 switch (psp) {
 case 129:

  ds2760_battery_write_active_full(di, val->intval / 1000L);
  break;

 case 128:

  ds2760_battery_set_current_accum(di, val->intval);
  break;

 default:
  return -EPERM;
 }

 return 0;
}
