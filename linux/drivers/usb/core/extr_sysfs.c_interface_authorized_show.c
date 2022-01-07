
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int authorized; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct usb_interface* to_usb_interface (struct device*) ;

__attribute__((used)) static ssize_t interface_authorized_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct usb_interface *intf = to_usb_interface(dev);

 return sprintf(buf, "%u\n", intf->authorized);
}
