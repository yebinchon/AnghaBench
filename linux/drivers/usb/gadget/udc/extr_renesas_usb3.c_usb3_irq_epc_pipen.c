
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct renesas_usb3 {int lock; } ;


 int PN_INT_BFRDY ;
 int PN_INT_LSTTR ;
 int USB3_PN_INT_ENA ;
 int USB3_PN_INT_STA ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usb3_irq_epc_pipen_bfrdy (struct renesas_usb3*,int) ;
 int usb3_irq_epc_pipen_lsttr (struct renesas_usb3*,int) ;
 scalar_t__ usb3_pn_change (struct renesas_usb3*,int) ;
 int usb3_read (struct renesas_usb3*,int ) ;
 int usb3_write (struct renesas_usb3*,int,int ) ;

__attribute__((used)) static void usb3_irq_epc_pipen(struct renesas_usb3 *usb3, int num)
{
 u32 pn_int_sta;

 spin_lock(&usb3->lock);
 if (usb3_pn_change(usb3, num) < 0) {
  spin_unlock(&usb3->lock);
  return;
 }

 pn_int_sta = usb3_read(usb3, USB3_PN_INT_STA);
 pn_int_sta &= usb3_read(usb3, USB3_PN_INT_ENA);
 usb3_write(usb3, pn_int_sta, USB3_PN_INT_STA);
 spin_unlock(&usb3->lock);
 if (pn_int_sta & PN_INT_LSTTR)
  usb3_irq_epc_pipen_lsttr(usb3, num);
 if (pn_int_sta & PN_INT_BFRDY)
  usb3_irq_epc_pipen_bfrdy(usb3, num);
}
