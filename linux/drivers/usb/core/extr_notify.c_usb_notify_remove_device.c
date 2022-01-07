
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int USB_DEVICE_REMOVE ;
 int blocking_notifier_call_chain (int *,int ,struct usb_device*) ;
 int usb_notifier_list ;

void usb_notify_remove_device(struct usb_device *udev)
{
 blocking_notifier_call_chain(&usb_notifier_list,
   USB_DEVICE_REMOVE, udev);
}
