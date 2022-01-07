
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int dummy; } ;


 int USB_BUS_REMOVE ;
 int blocking_notifier_call_chain (int *,int ,struct usb_bus*) ;
 int usb_notifier_list ;

void usb_notify_remove_bus(struct usb_bus *ubus)
{
 blocking_notifier_call_chain(&usb_notifier_list, USB_BUS_REMOVE, ubus);
}
