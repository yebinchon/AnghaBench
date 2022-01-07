
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {TYPE_1__* driver; } ;
struct usb_device {scalar_t__ parent; int bus; } ;
struct TYPE_2__ {int (* free_dev ) (struct usb_hcd*,struct usb_device*) ;} ;


 struct usb_hcd* bus_to_hcd (int ) ;
 int stub1 (struct usb_hcd*,struct usb_device*) ;

__attribute__((used)) static void hub_free_dev(struct usb_device *udev)
{
 struct usb_hcd *hcd = bus_to_hcd(udev->bus);


 if (hcd->driver->free_dev && udev->parent)
  hcd->driver->free_dev(hcd, udev);
}
