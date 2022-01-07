
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbhsh_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ root_hub; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct usb_device {scalar_t__ parent; } ;


 struct usb_device* usbhsh_udev_to_usbv (struct usbhsh_device*) ;

__attribute__((used)) static int usbhsh_connected_to_rhdev(struct usb_hcd *hcd,
         struct usbhsh_device *udev)
{
 struct usb_device *usbv = usbhsh_udev_to_usbv(udev);

 return hcd->self.root_hub == usbv->parent;
}
