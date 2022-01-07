
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct twl4030_bci {int ac_mode; int usb_mode; TYPE_1__* ac; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct device dev; } ;


 int EINVAL ;
 struct twl4030_bci* dev_get_drvdata (int ) ;
 int modes ;
 int sysfs_match_string (int ,char const*) ;
 int twl4030_charger_enable_ac (struct twl4030_bci*,int) ;
 int twl4030_charger_enable_usb (struct twl4030_bci*,int) ;

__attribute__((used)) static ssize_t
twl4030_bci_mode_store(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t n)
{
 struct twl4030_bci *bci = dev_get_drvdata(dev->parent);
 int mode;
 int status;

 mode = sysfs_match_string(modes, buf);
 if (mode < 0)
  return mode;

 if (dev == &bci->ac->dev) {
  if (mode == 2)
   return -EINVAL;
  twl4030_charger_enable_ac(bci, 0);
  bci->ac_mode = mode;
  status = twl4030_charger_enable_ac(bci, 1);
 } else {
  twl4030_charger_enable_usb(bci, 0);
  bci->usb_mode = mode;
  status = twl4030_charger_enable_usb(bci, 1);
 }
 return (status == 0) ? n : status;
}
