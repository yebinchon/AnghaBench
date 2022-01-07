
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_endpoint_descriptor {int dummy; } ;
struct renesas_usb3_ep {int num; int dir_in; } ;
struct renesas_usb3 {int lock; } ;


 int PN_CON_EN ;
 int USB3_PN_CON ;
 int USB3_PN_RAMMAP ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb3_calc_rammap_val (struct renesas_usb3_ep*,struct usb_endpoint_descriptor const*) ;
 struct renesas_usb3* usb3_ep_to_usb3 (struct renesas_usb3_ep*) ;
 int usb3_pn_change (struct renesas_usb3*,int ) ;
 int usb3_pn_con_clear (struct renesas_usb3*) ;
 int usb3_set_bit (struct renesas_usb3*,int ,int ) ;
 int usb3_write (struct renesas_usb3*,int ,int ) ;
 int usb3_write_pn_mod (struct renesas_usb3_ep*,struct usb_endpoint_descriptor const*) ;
 int usb_endpoint_dir_in (struct usb_endpoint_descriptor const*) ;

__attribute__((used)) static int usb3_enable_pipe_n(struct renesas_usb3_ep *usb3_ep,
         const struct usb_endpoint_descriptor *desc)
{
 struct renesas_usb3 *usb3 = usb3_ep_to_usb3(usb3_ep);
 unsigned long flags;

 usb3_ep->dir_in = usb_endpoint_dir_in(desc);

 spin_lock_irqsave(&usb3->lock, flags);
 if (!usb3_pn_change(usb3, usb3_ep->num)) {
  usb3_write_pn_mod(usb3_ep, desc);
  usb3_write(usb3, usb3_calc_rammap_val(usb3_ep, desc),
      USB3_PN_RAMMAP);
  usb3_pn_con_clear(usb3);
  usb3_set_bit(usb3, PN_CON_EN, USB3_PN_CON);
 }
 spin_unlock_irqrestore(&usb3->lock, flags);

 return 0;
}
