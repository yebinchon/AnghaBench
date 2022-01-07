
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int dummy; } ;


 int USB30_CON_B3_PLLWAKE ;
 int USB3_USB30_CON ;
 int USB_INT_1_B3_PLLWKUP ;
 int usb3_enable_irq_1 (struct renesas_usb3*,int ) ;
 int usb3_is_usb3_phy_in_u3 (struct renesas_usb3*) ;
 int usb3_set_bit (struct renesas_usb3*,int ,int ) ;

__attribute__((used)) static bool usb3_wakeup_usb3_phy(struct renesas_usb3 *usb3)
{
 if (!usb3_is_usb3_phy_in_u3(usb3))
  return 1;

 usb3_set_bit(usb3, USB30_CON_B3_PLLWAKE, USB3_USB30_CON);
 usb3_enable_irq_1(usb3, USB_INT_1_B3_PLLWKUP);

 return 0;
}
