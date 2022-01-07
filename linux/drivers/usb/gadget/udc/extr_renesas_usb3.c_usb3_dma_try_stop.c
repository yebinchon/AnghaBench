
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3_request {int dummy; } ;
struct renesas_usb3_ep {int num; int dma; } ;
struct renesas_usb3 {int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb3_disable_dma_pipen (struct renesas_usb3*) ;
 int usb3_dma_put_setting_area (struct renesas_usb3_ep*,struct renesas_usb3_request*) ;
 int usb3_dma_stop_prd (struct renesas_usb3_ep*) ;
 int usb3_dma_update_status (struct renesas_usb3_ep*,struct renesas_usb3_request*) ;
 struct renesas_usb3* usb3_ep_to_usb3 (struct renesas_usb3_ep*) ;
 int usb3_pn_change (struct renesas_usb3*,int ) ;

__attribute__((used)) static int usb3_dma_try_stop(struct renesas_usb3_ep *usb3_ep,
        struct renesas_usb3_request *usb3_req)
{
 struct renesas_usb3 *usb3 = usb3_ep_to_usb3(usb3_ep);
 unsigned long flags;
 int status = 0;

 spin_lock_irqsave(&usb3->lock, flags);
 if (!usb3_ep->dma)
  goto out;

 if (!usb3_pn_change(usb3, usb3_ep->num))
  usb3_disable_dma_pipen(usb3);
 usb3_dma_stop_prd(usb3_ep);
 status = usb3_dma_update_status(usb3_ep, usb3_req);
 usb3_dma_put_setting_area(usb3_ep, usb3_req);

out:
 spin_unlock_irqrestore(&usb3->lock, flags);
 return status;
}
