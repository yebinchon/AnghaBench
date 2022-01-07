
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int rebind_marked_interfaces (struct usb_device*) ;
 int unbind_marked_interfaces (struct usb_device*) ;

void usb_unbind_and_rebind_marked_interfaces(struct usb_device *udev)
{
 unbind_marked_interfaces(udev);
 rebind_marked_interfaces(udev);
}
