
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int extcon_usb; int extcon_work; scalar_t__ workaround_for_vbus; } ;


 int USB3_USB_STA ;
 int USB_STA_VBUS_STA ;
 int schedule_work (int *) ;
 int usb3_connect (struct renesas_usb3*) ;
 int usb3_disconnect (struct renesas_usb3*) ;
 int usb3_read (struct renesas_usb3*,int ) ;

__attribute__((used)) static void usb3_check_vbus(struct renesas_usb3 *usb3)
{
 if (usb3->workaround_for_vbus) {
  usb3_connect(usb3);
 } else {
  usb3->extcon_usb = !!(usb3_read(usb3, USB3_USB_STA) &
       USB_STA_VBUS_STA);
  if (usb3->extcon_usb)
   usb3_connect(usb3);
  else
   usb3_disconnect(usb3);

  schedule_work(&usb3->extcon_work);
 }
}
