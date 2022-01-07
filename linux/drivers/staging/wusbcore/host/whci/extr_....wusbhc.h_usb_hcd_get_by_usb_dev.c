
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct usb_device {int bus; } ;


 struct usb_hcd* bus_to_hcd (int ) ;
 struct usb_hcd* usb_get_hcd (struct usb_hcd*) ;

__attribute__((used)) static inline
struct usb_hcd *usb_hcd_get_by_usb_dev(struct usb_device *usb_dev)
{
 struct usb_hcd *usb_hcd;
 usb_hcd = bus_to_hcd(usb_dev->bus);
 return usb_get_hcd(usb_hcd);
}
