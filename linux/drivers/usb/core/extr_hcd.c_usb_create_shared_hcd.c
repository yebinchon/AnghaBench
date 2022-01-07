
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct hc_driver {int dummy; } ;
struct device {int dummy; } ;


 struct usb_hcd* __usb_create_hcd (struct hc_driver const*,struct device*,struct device*,char const*,struct usb_hcd*) ;

struct usb_hcd *usb_create_shared_hcd(const struct hc_driver *driver,
  struct device *dev, const char *bus_name,
  struct usb_hcd *primary_hcd)
{
 return __usb_create_hcd(driver, dev, dev, bus_name, primary_hcd);
}
