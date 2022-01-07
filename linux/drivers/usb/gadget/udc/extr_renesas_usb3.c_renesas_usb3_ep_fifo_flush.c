
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {int dummy; } ;
struct renesas_usb3_ep {scalar_t__ num; } ;
struct renesas_usb3 {int lock; } ;


 int PN_CON_EN ;
 int USB3_PN_CON ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct renesas_usb3* usb3_ep_to_usb3 (struct renesas_usb3_ep*) ;
 int usb3_p0_con_clear_buffer (struct renesas_usb3*) ;
 int usb3_pn_change (struct renesas_usb3*,scalar_t__) ;
 int usb3_pn_con_clear (struct renesas_usb3*) ;
 int usb3_set_bit (struct renesas_usb3*,int ,int ) ;
 struct renesas_usb3_ep* usb_ep_to_usb3_ep (struct usb_ep*) ;

__attribute__((used)) static void renesas_usb3_ep_fifo_flush(struct usb_ep *_ep)
{
 struct renesas_usb3_ep *usb3_ep = usb_ep_to_usb3_ep(_ep);
 struct renesas_usb3 *usb3 = usb3_ep_to_usb3(usb3_ep);
 unsigned long flags;

 if (usb3_ep->num) {
  spin_lock_irqsave(&usb3->lock, flags);
  if (!usb3_pn_change(usb3, usb3_ep->num)) {
   usb3_pn_con_clear(usb3);
   usb3_set_bit(usb3, PN_CON_EN, USB3_PN_CON);
  }
  spin_unlock_irqrestore(&usb3->lock, flags);
 } else {
  usb3_p0_con_clear_buffer(usb3);
 }
}
