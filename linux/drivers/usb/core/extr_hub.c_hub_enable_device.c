
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {TYPE_1__* driver; } ;
struct usb_device {scalar_t__ state; int bus; } ;
struct TYPE_2__ {int (* enable_device ) (struct usb_hcd*,struct usb_device*) ;} ;


 int EINVAL ;
 scalar_t__ USB_STATE_ADDRESS ;
 scalar_t__ USB_STATE_DEFAULT ;
 struct usb_hcd* bus_to_hcd (int ) ;
 int stub1 (struct usb_hcd*,struct usb_device*) ;

__attribute__((used)) static int hub_enable_device(struct usb_device *udev)
{
 struct usb_hcd *hcd = bus_to_hcd(udev->bus);

 if (!hcd->driver->enable_device)
  return 0;
 if (udev->state == USB_STATE_ADDRESS)
  return 0;
 if (udev->state != USB_STATE_DEFAULT)
  return -EINVAL;

 return hcd->driver->enable_device(hcd, udev);
}
