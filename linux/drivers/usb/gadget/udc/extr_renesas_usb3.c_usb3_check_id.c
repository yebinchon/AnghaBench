
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {scalar_t__ connection_state; int extcon_work; int forced_b_device; scalar_t__ extcon_host; int role_sw_by_connector; } ;


 scalar_t__ USB_ROLE_HOST ;
 int schedule_work (int *) ;
 scalar_t__ usb3_is_a_device (struct renesas_usb3*) ;
 int usb3_mode_config (struct renesas_usb3*,int,int) ;

__attribute__((used)) static void usb3_check_id(struct renesas_usb3 *usb3)
{
 usb3->extcon_host = usb3_is_a_device(usb3);

 if ((!usb3->role_sw_by_connector && usb3->extcon_host &&
      !usb3->forced_b_device) || usb3->connection_state == USB_ROLE_HOST)
  usb3_mode_config(usb3, 1, 1);
 else
  usb3_mode_config(usb3, 0, 0);

 schedule_work(&usb3->extcon_work);
}
