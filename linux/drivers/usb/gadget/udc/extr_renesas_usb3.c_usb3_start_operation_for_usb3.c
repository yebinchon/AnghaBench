
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int dummy; } ;


 int USB30_CON_B3_CONNECT ;
 int USB3_USB30_CON ;
 int USB3_USB_COM_CON ;
 int USB_COM_CON_EP0_EN ;
 int USB_COM_CON_SPD_MODE ;
 int usb3_clear_bit (struct renesas_usb3*,int ,int ) ;
 int usb3_set_bit (struct renesas_usb3*,int ,int ) ;

__attribute__((used)) static void usb3_start_operation_for_usb3(struct renesas_usb3 *usb3)
{
 usb3_set_bit(usb3, USB_COM_CON_EP0_EN, USB3_USB_COM_CON);
 usb3_clear_bit(usb3, USB_COM_CON_SPD_MODE, USB3_USB_COM_CON);
 usb3_set_bit(usb3, USB30_CON_B3_CONNECT, USB3_USB30_CON);
}
