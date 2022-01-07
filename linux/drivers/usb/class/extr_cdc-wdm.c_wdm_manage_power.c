
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int needs_remote_wakeup; } ;


 int usb_autopm_get_interface (struct usb_interface*) ;
 int usb_autopm_put_interface (struct usb_interface*) ;

__attribute__((used)) static int wdm_manage_power(struct usb_interface *intf, int on)
{

 int rv = usb_autopm_get_interface(intf);

 intf->needs_remote_wakeup = on;
 if (!rv)
  usb_autopm_put_interface(intf);
 return 0;
}
