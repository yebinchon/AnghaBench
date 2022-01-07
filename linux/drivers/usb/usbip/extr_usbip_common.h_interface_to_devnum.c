
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device {int devnum; } ;


 struct usb_device* interface_to_usbdev (struct usb_interface*) ;

__attribute__((used)) static inline int interface_to_devnum(struct usb_interface *interface)
{
 struct usb_device *udev = interface_to_usbdev(interface);

 return udev->devnum;
}
