
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int dummy; } ;


 int P0_INT_ALL_BITS ;
 int USB3_P0_INT_ENA ;
 int USB3_P0_INT_STA ;
 int USB3_USB_INT_ENA_2 ;
 int USB_INT_1_B2_L1SPND ;
 int USB_INT_1_B2_SPND ;
 int USB_INT_1_B2_USBRST ;
 int USB_INT_1_B3_HOTRST ;
 int USB_INT_1_B3_WRMRST ;
 int USB_INT_2_PIPE (int ) ;
 int usb3_enable_irq_1 (struct renesas_usb3*,int) ;
 int usb3_set_bit (struct renesas_usb3*,int ,int ) ;
 int usb3_write (struct renesas_usb3*,int ,int ) ;

__attribute__((used)) static void usb3_transition_to_default_state(struct renesas_usb3 *usb3,
          bool is_usb3)
{
 usb3_set_bit(usb3, USB_INT_2_PIPE(0), USB3_USB_INT_ENA_2);
 usb3_write(usb3, P0_INT_ALL_BITS, USB3_P0_INT_STA);
 usb3_set_bit(usb3, P0_INT_ALL_BITS, USB3_P0_INT_ENA);

 if (is_usb3)
  usb3_enable_irq_1(usb3, USB_INT_1_B3_WRMRST |
      USB_INT_1_B3_HOTRST);
 else
  usb3_enable_irq_1(usb3, USB_INT_1_B2_SPND |
      USB_INT_1_B2_L1SPND | USB_INT_1_B2_USBRST);
}
