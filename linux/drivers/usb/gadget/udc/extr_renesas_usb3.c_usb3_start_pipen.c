
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct renesas_usb3_request {int dummy; } ;
struct renesas_usb3_ep {int started; int num; scalar_t__ dir_in; scalar_t__ halt; } ;
struct renesas_usb3 {int lock; } ;


 int EAGAIN ;
 int PN_INT_BFRDY ;
 int PN_INT_LSTTR ;
 int USB3_PN_INT_ENA ;
 int USB3_PN_WRITE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ usb3_dma_try_start (struct renesas_usb3_ep*,struct renesas_usb3_request*) ;
 int usb3_enable_pipe_irq (struct renesas_usb3*,int ) ;
 struct renesas_usb3* usb3_ep_to_usb3 (struct renesas_usb3_ep*) ;
 struct renesas_usb3_request* usb3_get_request (struct renesas_usb3_ep*) ;
 scalar_t__ usb3_pn_change (struct renesas_usb3*,int ) ;
 int usb3_pn_start (struct renesas_usb3*) ;
 int usb3_set_bit (struct renesas_usb3*,int,int ) ;
 int usb3_write_pipe (struct renesas_usb3_ep*,struct renesas_usb3_request*,int ) ;

__attribute__((used)) static void usb3_start_pipen(struct renesas_usb3_ep *usb3_ep,
        struct renesas_usb3_request *usb3_req)
{
 struct renesas_usb3 *usb3 = usb3_ep_to_usb3(usb3_ep);
 struct renesas_usb3_request *usb3_req_first = usb3_get_request(usb3_ep);
 unsigned long flags;
 int ret = -EAGAIN;
 u32 enable_bits = 0;

 spin_lock_irqsave(&usb3->lock, flags);
 if (usb3_ep->halt || usb3_ep->started)
  goto out;
 if (usb3_req != usb3_req_first)
  goto out;

 if (usb3_pn_change(usb3, usb3_ep->num) < 0)
  goto out;

 usb3_ep->started = 1;

 if (usb3_dma_try_start(usb3_ep, usb3_req))
  goto out;

 usb3_pn_start(usb3);

 if (usb3_ep->dir_in) {
  ret = usb3_write_pipe(usb3_ep, usb3_req, USB3_PN_WRITE);
  enable_bits |= PN_INT_LSTTR;
 }

 if (ret < 0)
  enable_bits |= PN_INT_BFRDY;

 if (enable_bits) {
  usb3_set_bit(usb3, enable_bits, USB3_PN_INT_ENA);
  usb3_enable_pipe_irq(usb3, usb3_ep->num);
 }
out:
 spin_unlock_irqrestore(&usb3->lock, flags);
}
