
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int workaround_for_vbus; } ;


 int USB3_USB_INT_STA_1 ;
 int USB_INT_1_VBUS_CNG ;
 int usb3_enable_irq_1 (struct renesas_usb3*,int ) ;
 int usb3_write (struct renesas_usb3*,int ,int ) ;

__attribute__((used)) static void usb3_init_epc_registers(struct renesas_usb3 *usb3)
{
 usb3_write(usb3, ~0, USB3_USB_INT_STA_1);
 if (!usb3->workaround_for_vbus)
  usb3_enable_irq_1(usb3, USB_INT_1_VBUS_CNG);
}
