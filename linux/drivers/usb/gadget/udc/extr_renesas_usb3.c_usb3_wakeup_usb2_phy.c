
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int dummy; } ;


 int USB20_CON_B2_SUSPEND ;
 int USB3_USB20_CON ;
 int USB_INT_1_B2_RSUM ;
 int usb3_clear_bit (struct renesas_usb3*,int,int ) ;
 int usb3_enable_irq_1 (struct renesas_usb3*,int ) ;
 int usb3_read (struct renesas_usb3*,int ) ;

__attribute__((used)) static bool usb3_wakeup_usb2_phy(struct renesas_usb3 *usb3)
{
 if (!(usb3_read(usb3, USB3_USB20_CON) & USB20_CON_B2_SUSPEND))
  return 1;

 usb3_clear_bit(usb3, USB20_CON_B2_SUSPEND, USB3_USB20_CON);
 usb3_enable_irq_1(usb3, USB_INT_1_B2_RSUM);

 return 0;
}
