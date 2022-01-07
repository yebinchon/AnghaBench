
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct renesas_usb3 {int gadget; TYPE_1__* driver; scalar_t__ disabled_count; } ;
struct TYPE_2__ {int (* disconnect ) (int *) ;} ;


 int USB30_CON_B3_CONNECT ;
 int USB3_USB30_CON ;
 int USB3_USB_COM_CON ;
 int USB_COM_CON_SPD_MODE ;
 int USB_INT_1_B2_L1SPND ;
 int USB_INT_1_B2_RSUM ;
 int USB_INT_1_B2_SPND ;
 int USB_INT_1_B2_USBRST ;
 int USB_INT_1_B3_DISABLE ;
 int USB_INT_1_B3_HOTRST ;
 int USB_INT_1_B3_LUPSUCS ;
 int USB_INT_1_B3_PLLWKUP ;
 int USB_INT_1_B3_WRMRST ;
 int USB_INT_1_SPEED ;
 int stub1 (int *) ;
 int usb3_clear_bit (struct renesas_usb3*,int ,int ) ;
 int usb3_disable_irq_1 (struct renesas_usb3*,int) ;
 int usb3_init_epc_registers (struct renesas_usb3*) ;
 int usb3_reset_epc (struct renesas_usb3*) ;
 int usb3_usb2_pullup (struct renesas_usb3*,int ) ;

__attribute__((used)) static void usb3_disconnect(struct renesas_usb3 *usb3)
{
 usb3->disabled_count = 0;
 usb3_usb2_pullup(usb3, 0);
 usb3_clear_bit(usb3, USB30_CON_B3_CONNECT, USB3_USB30_CON);
 usb3_reset_epc(usb3);
 usb3_disable_irq_1(usb3, USB_INT_1_B2_RSUM | USB_INT_1_B3_PLLWKUP |
      USB_INT_1_B3_LUPSUCS | USB_INT_1_B3_DISABLE |
      USB_INT_1_SPEED | USB_INT_1_B3_WRMRST |
      USB_INT_1_B3_HOTRST | USB_INT_1_B2_SPND |
      USB_INT_1_B2_L1SPND | USB_INT_1_B2_USBRST);
 usb3_clear_bit(usb3, USB_COM_CON_SPD_MODE, USB3_USB_COM_CON);
 usb3_init_epc_registers(usb3);

 if (usb3->driver)
  usb3->driver->disconnect(&usb3->gadget);
}
