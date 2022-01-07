
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum power_supply_type { ____Placeholder_power_supply_type } power_supply_type ;


 int POWER_SUPPLY_TYPE_BATTERY ;
 int POWER_SUPPLY_TYPE_MAINS ;
 int POWER_SUPPLY_TYPE_UNKNOWN ;
 int POWER_SUPPLY_TYPE_UPS ;
 int POWER_SUPPLY_TYPE_USB ;
 int dev_warn (struct device*,char*,char const*) ;
 int device_property_read_string (struct device*,char*,char const**) ;
 int strcmp (char*,char const*) ;

__attribute__((used)) static enum power_supply_type gpio_charger_get_type(struct device *dev)
{
 const char *chargetype;

 if (!device_property_read_string(dev, "charger-type", &chargetype)) {
  if (!strcmp("unknown", chargetype))
   return POWER_SUPPLY_TYPE_UNKNOWN;
  if (!strcmp("battery", chargetype))
   return POWER_SUPPLY_TYPE_BATTERY;
  if (!strcmp("ups", chargetype))
   return POWER_SUPPLY_TYPE_UPS;
  if (!strcmp("mains", chargetype))
   return POWER_SUPPLY_TYPE_MAINS;
  if (!strcmp("usb-sdp", chargetype))
   return POWER_SUPPLY_TYPE_USB;
  if (!strcmp("usb-dcp", chargetype))
   return POWER_SUPPLY_TYPE_USB;
  if (!strcmp("usb-cdp", chargetype))
   return POWER_SUPPLY_TYPE_USB;
  if (!strcmp("usb-aca", chargetype))
   return POWER_SUPPLY_TYPE_USB;
 }
 dev_warn(dev, "unknown charger type %s\n", chargetype);

 return POWER_SUPPLY_TYPE_UNKNOWN;
}
