
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3_ep {int halt; int num; } ;
struct renesas_usb3 {int lock; } ;


 int PN_CON_EN ;
 int USB3_PN_CON ;
 int USB3_PN_INT_ENA ;
 int USB3_PN_RAMMAP ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb3_clear_bit (struct renesas_usb3*,int ,int ) ;
 struct renesas_usb3* usb3_ep_to_usb3 (struct renesas_usb3_ep*) ;
 int usb3_pn_change (struct renesas_usb3*,int ) ;
 int usb3_write (struct renesas_usb3*,int ,int ) ;

__attribute__((used)) static int usb3_disable_pipe_n(struct renesas_usb3_ep *usb3_ep)
{
 struct renesas_usb3 *usb3 = usb3_ep_to_usb3(usb3_ep);
 unsigned long flags;

 usb3_ep->halt = 0;

 spin_lock_irqsave(&usb3->lock, flags);
 if (!usb3_pn_change(usb3, usb3_ep->num)) {
  usb3_write(usb3, 0, USB3_PN_INT_ENA);
  usb3_write(usb3, 0, USB3_PN_RAMMAP);
  usb3_clear_bit(usb3, PN_CON_EN, USB3_PN_CON);
 }
 spin_unlock_irqrestore(&usb3->lock, flags);

 return 0;
}
