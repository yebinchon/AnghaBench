
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct usb_device {int bus; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int HCD_INTF_AUTHORIZED (struct usb_hcd*) ;
 struct usb_hcd* bus_to_hcd (int ) ;
 int sprintf (char*,char*,int) ;
 struct usb_device* to_usb_device (struct device*) ;

__attribute__((used)) static ssize_t interface_authorized_default_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct usb_device *usb_dev = to_usb_device(dev);
 struct usb_hcd *hcd = bus_to_hcd(usb_dev->bus);

 return sprintf(buf, "%u\n", !!HCD_INTF_AUTHORIZED(hcd));
}
