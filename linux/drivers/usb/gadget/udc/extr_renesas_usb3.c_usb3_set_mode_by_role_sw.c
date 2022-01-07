
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int role_work; int role; scalar_t__ role_sw; } ;


 int USB_ROLE_DEVICE ;
 int USB_ROLE_HOST ;
 int schedule_work (int *) ;
 int usb3_set_mode (struct renesas_usb3*,int) ;

__attribute__((used)) static void usb3_set_mode_by_role_sw(struct renesas_usb3 *usb3, bool host)
{
 if (usb3->role_sw) {
  usb3->role = host ? USB_ROLE_HOST : USB_ROLE_DEVICE;
  schedule_work(&usb3->role_work);
 } else {
  usb3_set_mode(usb3, host);
 }
}
