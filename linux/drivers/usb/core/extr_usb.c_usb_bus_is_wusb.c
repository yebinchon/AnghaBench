
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int wireless; } ;
struct usb_bus {int dummy; } ;


 struct usb_hcd* bus_to_hcd (struct usb_bus*) ;

__attribute__((used)) static unsigned usb_bus_is_wusb(struct usb_bus *bus)
{
 struct usb_hcd *hcd = bus_to_hcd(bus);
 return hcd->wireless;
}
