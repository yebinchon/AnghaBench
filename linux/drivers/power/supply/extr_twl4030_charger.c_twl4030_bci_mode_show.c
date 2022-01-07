
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct twl4030_bci {int usb_mode; int ac_mode; TYPE_1__* ac; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct device dev; } ;


 int ARRAY_SIZE (char**) ;
 scalar_t__ PAGE_SIZE ;
 struct twl4030_bci* dev_get_drvdata (int ) ;
 char** modes ;
 scalar_t__ snprintf (char*,scalar_t__,char*,char*) ;

__attribute__((used)) static ssize_t
twl4030_bci_mode_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct twl4030_bci *bci = dev_get_drvdata(dev->parent);
 int len = 0;
 int i;
 int mode = bci->usb_mode;

 if (dev == &bci->ac->dev)
  mode = bci->ac_mode;

 for (i = 0; i < ARRAY_SIZE(modes); i++)
  if (mode == i)
   len += snprintf(buf+len, PAGE_SIZE-len,
     "[%s] ", modes[i]);
  else
   len += snprintf(buf+len, PAGE_SIZE-len,
     "%s ", modes[i]);
 buf[len-1] = '\n';
 return len;
}
