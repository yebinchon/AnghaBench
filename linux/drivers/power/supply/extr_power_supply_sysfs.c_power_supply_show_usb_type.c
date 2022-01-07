
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef enum power_supply_usb_type { ____Placeholder_power_supply_usb_type } power_supply_usb_type ;


 int EINVAL ;
 int dev_warn (struct device*,char*) ;
 char** power_supply_usb_type_text ;
 scalar_t__ sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t power_supply_show_usb_type(struct device *dev,
       enum power_supply_usb_type *usb_types,
       ssize_t num_usb_types,
       union power_supply_propval *value,
       char *buf)
{
 enum power_supply_usb_type usb_type;
 ssize_t count = 0;
 bool match = 0;
 int i;

 for (i = 0; i < num_usb_types; ++i) {
  usb_type = usb_types[i];

  if (value->intval == usb_type) {
   count += sprintf(buf + count, "[%s] ",
      power_supply_usb_type_text[usb_type]);
   match = 1;
  } else {
   count += sprintf(buf + count, "%s ",
      power_supply_usb_type_text[usb_type]);
  }
 }

 if (!match) {
  dev_warn(dev, "driver reporting unsupported connected type\n");
  return -EINVAL;
 }

 if (count)
  buf[count - 1] = '\n';

 return count;
}
