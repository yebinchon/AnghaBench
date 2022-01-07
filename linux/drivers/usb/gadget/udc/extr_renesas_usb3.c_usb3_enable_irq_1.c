
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct renesas_usb3 {int dummy; } ;


 int USB3_USB_INT_ENA_1 ;
 int usb3_set_bit (struct renesas_usb3*,int ,int ) ;

__attribute__((used)) static void usb3_enable_irq_1(struct renesas_usb3 *usb3, u32 bits)
{
 usb3_set_bit(usb3, bits, USB3_USB_INT_ENA_1);
}
