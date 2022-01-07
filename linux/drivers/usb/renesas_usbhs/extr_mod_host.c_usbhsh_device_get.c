
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsh_hpriv {int dummy; } ;
struct usbhsh_device {int dummy; } ;
struct usb_device {int dummy; } ;
struct urb {int pipe; } ;


 scalar_t__ usb_pipedevice (int ) ;
 struct usbhsh_device* usbhsh_device0 (struct usbhsh_hpriv*) ;
 struct usb_device* usbhsh_urb_to_usbv (struct urb*) ;
 struct usbhsh_device* usbhsh_usbv_to_udev (struct usb_device*) ;

__attribute__((used)) static struct usbhsh_device *usbhsh_device_get(struct usbhsh_hpriv *hpriv,
            struct urb *urb)
{
 struct usb_device *usbv = usbhsh_urb_to_usbv(urb);
 struct usbhsh_device *udev = usbhsh_usbv_to_udev(usbv);


 if (!udev)
  return ((void*)0);


 if (0 == usb_pipedevice(urb->pipe))
  return usbhsh_device0(hpriv);


 return udev;
}
