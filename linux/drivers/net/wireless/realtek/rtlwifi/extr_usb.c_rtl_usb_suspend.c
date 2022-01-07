
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
typedef int pm_message_t ;



int rtl_usb_suspend(struct usb_interface *pusb_intf, pm_message_t message)
{
 return 0;
}
