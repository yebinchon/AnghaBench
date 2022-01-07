
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int disabled_count; } ;


 int USB3_USB_COM_CON ;
 int USB_COM_CON_EP0_EN ;
 int USB_COM_CON_SPD_MODE ;
 int usb3_set_bit (struct renesas_usb3*,int ,int ) ;
 int usb3_usb2_pullup (struct renesas_usb3*,int) ;

__attribute__((used)) static void usb3_start_usb2_connection(struct renesas_usb3 *usb3)
{
 usb3->disabled_count++;
 usb3_set_bit(usb3, USB_COM_CON_EP0_EN, USB3_USB_COM_CON);
 usb3_set_bit(usb3, USB_COM_CON_SPD_MODE, USB3_USB_COM_CON);
 usb3_usb2_pullup(usb3, 1);
}
