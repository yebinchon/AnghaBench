
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct renesas_usb3 {int dummy; } ;


 int USB3_USB_COM_CON ;
 int USB_COM_CON_DEV_ADDR (int ) ;
 int usb3_set_bit (struct renesas_usb3*,int ,int ) ;

__attribute__((used)) static void usb3_set_device_address(struct renesas_usb3 *usb3, u16 addr)
{

 usb3_set_bit(usb3, USB_COM_CON_DEV_ADDR(addr), USB3_USB_COM_CON);
}
