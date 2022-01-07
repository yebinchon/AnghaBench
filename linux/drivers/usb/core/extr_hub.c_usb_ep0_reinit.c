
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int ep0; } ;


 scalar_t__ USB_DIR_IN ;
 scalar_t__ USB_DIR_OUT ;
 int usb_disable_endpoint (struct usb_device*,scalar_t__,int) ;
 int usb_enable_endpoint (struct usb_device*,int *,int) ;

void usb_ep0_reinit(struct usb_device *udev)
{
 usb_disable_endpoint(udev, 0 + USB_DIR_IN, 1);
 usb_disable_endpoint(udev, 0 + USB_DIR_OUT, 1);
 usb_enable_endpoint(udev, &udev->ep0, 1);
}
