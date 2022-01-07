
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct renesas_usb3 {int dummy; } ;


 int USB_OTG_IDMON ;
 int usb3_irq_idmon_change (struct renesas_usb3*) ;

__attribute__((used)) static void usb3_irq_otg_int(struct renesas_usb3 *usb3, u32 otg_int_sta)
{
 if (otg_int_sta & USB_OTG_IDMON)
  usb3_irq_idmon_change(usb3);
}
