
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_host_endpoint {int dummy; } ;
struct usb_hcd {TYPE_1__* driver; } ;
struct usb_device {int bus; } ;
struct TYPE_2__ {int (* endpoint_disable ) (struct usb_hcd*,struct usb_host_endpoint*) ;} ;


 struct usb_hcd* bus_to_hcd (int ) ;
 int might_sleep () ;
 int stub1 (struct usb_hcd*,struct usb_host_endpoint*) ;

void usb_hcd_disable_endpoint(struct usb_device *udev,
  struct usb_host_endpoint *ep)
{
 struct usb_hcd *hcd;

 might_sleep();
 hcd = bus_to_hcd(udev->bus);
 if (hcd->driver->endpoint_disable)
  hcd->driver->endpoint_disable(hcd, ep);
}
