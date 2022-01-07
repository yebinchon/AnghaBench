
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;

 int usb_online ;

__attribute__((used)) static int test_power_get_usb_property(struct power_supply *psy,
          enum power_supply_property psp,
          union power_supply_propval *val)
{
 switch (psp) {
 case 128:
  val->intval = usb_online;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
