
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct ucs1002_info {int dummy; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;


 struct ucs1002_info* power_supply_get_drvdata (struct power_supply*) ;
 int ucs1002_set_max_current (struct ucs1002_info*,int ) ;
 int ucs1002_set_usb_type (struct ucs1002_info*,int ) ;

__attribute__((used)) static int ucs1002_set_property(struct power_supply *psy,
    enum power_supply_property psp,
    const union power_supply_propval *val)
{
 struct ucs1002_info *info = power_supply_get_drvdata(psy);

 switch (psp) {
 case 129:
  return ucs1002_set_max_current(info, val->intval);
 case 128:
  return ucs1002_set_usb_type(info, val->intval);
 default:
  return -EINVAL;
 }
}
