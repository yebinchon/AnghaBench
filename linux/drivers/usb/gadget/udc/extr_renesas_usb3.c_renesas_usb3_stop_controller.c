
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int dummy; } ;


 int USB3_AXI_INT_ENA ;
 int USB3_P0_INT_ENA ;
 int USB3_USB_INT_ENA_1 ;
 int USB3_USB_INT_ENA_2 ;
 int USB3_USB_OTG_INT_ENA ;
 int usb3_disconnect (struct renesas_usb3*) ;
 int usb3_write (struct renesas_usb3*,int ,int ) ;

__attribute__((used)) static void renesas_usb3_stop_controller(struct renesas_usb3 *usb3)
{
 usb3_disconnect(usb3);
 usb3_write(usb3, 0, USB3_P0_INT_ENA);
 usb3_write(usb3, 0, USB3_USB_OTG_INT_ENA);
 usb3_write(usb3, 0, USB3_USB_INT_ENA_1);
 usb3_write(usb3, 0, USB3_USB_INT_ENA_2);
 usb3_write(usb3, 0, USB3_AXI_INT_ENA);
}
