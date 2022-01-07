
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int flags; } ;
struct usb_device {int bus; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int HCD_FLAG_INTF_AUTHORIZED ;
 struct usb_hcd* bus_to_hcd (int ) ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ strtobool (char const*,int*) ;
 struct usb_device* to_usb_device (struct device*) ;

__attribute__((used)) static ssize_t interface_authorized_default_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct usb_device *usb_dev = to_usb_device(dev);
 struct usb_hcd *hcd = bus_to_hcd(usb_dev->bus);
 int rc = count;
 bool val;

 if (strtobool(buf, &val) != 0)
  return -EINVAL;

 if (val)
  set_bit(HCD_FLAG_INTF_AUTHORIZED, &hcd->flags);
 else
  clear_bit(HCD_FLAG_INTF_AUTHORIZED, &hcd->flags);

 return rc;
}
