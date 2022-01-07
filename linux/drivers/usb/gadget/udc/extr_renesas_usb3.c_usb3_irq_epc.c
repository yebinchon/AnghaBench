
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct renesas_usb3 {int dummy; } ;


 int USB3_USB_INT_ENA_1 ;
 int USB3_USB_INT_ENA_2 ;
 int USB3_USB_INT_STA_1 ;
 int USB3_USB_INT_STA_2 ;
 int USB3_USB_OTG_INT_ENA ;
 int USB3_USB_OTG_INT_STA ;
 int usb3_irq_epc_int_1 (struct renesas_usb3*,int) ;
 int usb3_irq_epc_int_2 (struct renesas_usb3*,int) ;
 int usb3_irq_otg_int (struct renesas_usb3*,int) ;
 int usb3_read (struct renesas_usb3*,int ) ;
 int usb3_write (struct renesas_usb3*,int,int ) ;

__attribute__((used)) static void usb3_irq_epc(struct renesas_usb3 *usb3)
{
 u32 int_sta_1 = usb3_read(usb3, USB3_USB_INT_STA_1);
 u32 int_sta_2 = usb3_read(usb3, USB3_USB_INT_STA_2);
 u32 otg_int_sta = usb3_read(usb3, USB3_USB_OTG_INT_STA);

 int_sta_1 &= usb3_read(usb3, USB3_USB_INT_ENA_1);
 if (int_sta_1) {
  usb3_write(usb3, int_sta_1, USB3_USB_INT_STA_1);
  usb3_irq_epc_int_1(usb3, int_sta_1);
 }

 int_sta_2 &= usb3_read(usb3, USB3_USB_INT_ENA_2);
 if (int_sta_2)
  usb3_irq_epc_int_2(usb3, int_sta_2);

 otg_int_sta &= usb3_read(usb3, USB3_USB_OTG_INT_ENA);
 if (otg_int_sta) {
  usb3_write(usb3, otg_int_sta, USB3_USB_OTG_INT_STA);
  usb3_irq_otg_int(usb3, otg_int_sta);
 }
}
