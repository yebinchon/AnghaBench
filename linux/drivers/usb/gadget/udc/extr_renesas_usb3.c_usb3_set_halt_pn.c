
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3_ep {int halt; int wedge; int num; } ;
struct renesas_usb3 {int lock; } ;


 int PN_CON_EN ;
 int USB3_PN_CON ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct renesas_usb3* usb3_ep_to_usb3 (struct renesas_usb3_ep*) ;
 int usb3_pn_change (struct renesas_usb3*,int ) ;
 int usb3_pn_con_clear (struct renesas_usb3*) ;
 int usb3_pn_stall (struct renesas_usb3*) ;
 int usb3_pn_stop (struct renesas_usb3*) ;
 int usb3_set_bit (struct renesas_usb3*,int ,int ) ;

__attribute__((used)) static int usb3_set_halt_pn(struct renesas_usb3_ep *usb3_ep, bool halt,
       bool is_clear_feature)
{
 struct renesas_usb3 *usb3 = usb3_ep_to_usb3(usb3_ep);
 unsigned long flags;

 spin_lock_irqsave(&usb3->lock, flags);
 if (!usb3_pn_change(usb3, usb3_ep->num)) {
  usb3_ep->halt = halt;
  if (halt) {
   usb3_pn_stall(usb3);
  } else if (!is_clear_feature || !usb3_ep->wedge) {
   usb3_pn_con_clear(usb3);
   usb3_set_bit(usb3, PN_CON_EN, USB3_PN_CON);
   usb3_pn_stop(usb3);
  }
 }
 spin_unlock_irqrestore(&usb3->lock, flags);

 return 0;
}
