
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ strtobool (char const*,int*) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 int usb_authorize_interface (struct usb_interface*) ;
 int usb_deauthorize_interface (struct usb_interface*) ;

__attribute__((used)) static ssize_t interface_authorized_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct usb_interface *intf = to_usb_interface(dev);
 bool val;

 if (strtobool(buf, &val) != 0)
  return -EINVAL;

 if (val)
  usb_authorize_interface(intf);
 else
  usb_deauthorize_interface(intf);

 return count;
}
