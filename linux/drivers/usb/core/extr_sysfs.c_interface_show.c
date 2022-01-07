
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {TYPE_1__* cur_altsetting; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int string; } ;


 char* READ_ONCE (int ) ;
 int sprintf (char*,char*,char*) ;
 struct usb_interface* to_usb_interface (struct device*) ;

__attribute__((used)) static ssize_t interface_show(struct device *dev, struct device_attribute *attr,
         char *buf)
{
 struct usb_interface *intf;
 char *string;

 intf = to_usb_interface(dev);
 string = READ_ONCE(intf->cur_altsetting->string);
 if (!string)
  return 0;
 return sprintf(buf, "%s\n", string);
}
