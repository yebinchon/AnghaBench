
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int strval; int intval; } ;
struct ucs1002_info {int present; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int UCS1002_MANUFACTURER ;
 struct ucs1002_info* power_supply_get_drvdata (struct power_supply*) ;
 int ucs1002_get_charge (struct ucs1002_info*,union power_supply_propval*) ;
 int ucs1002_get_current (struct ucs1002_info*,union power_supply_propval*) ;
 int ucs1002_get_health (struct ucs1002_info*,union power_supply_propval*) ;
 int ucs1002_get_max_current (struct ucs1002_info*,union power_supply_propval*) ;
 int ucs1002_get_online (struct ucs1002_info*,union power_supply_propval*) ;
 int ucs1002_get_usb_type (struct ucs1002_info*,union power_supply_propval*) ;

__attribute__((used)) static int ucs1002_get_property(struct power_supply *psy,
    enum power_supply_property psp,
    union power_supply_propval *val)
{
 struct ucs1002_info *info = power_supply_get_drvdata(psy);

 switch (psp) {
 case 130:
  return ucs1002_get_online(info, val);
 case 135:
  return ucs1002_get_charge(info, val);
 case 133:
  return ucs1002_get_current(info, val);
 case 134:
  return ucs1002_get_max_current(info, val);
 case 128:
  return ucs1002_get_usb_type(info, val);
 case 132:
  return ucs1002_get_health(info, val);
 case 129:
  val->intval = info->present;
  return 0;
 case 131:
  val->strval = UCS1002_MANUFACTURER;
  return 0;
 default:
  return -EINVAL;
 }
}
