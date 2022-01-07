
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {int dummy; } ;
struct isp1760_udc {int lock; } ;
struct isp1760_ep {struct isp1760_udc* udc; } ;


 int DC_CLBUF ;
 int DC_CTRLFUNC ;
 struct isp1760_ep* ep_to_udc_ep (struct usb_ep*) ;
 int isp1760_udc_select_ep (struct isp1760_ep*) ;
 int isp1760_udc_write (struct isp1760_udc*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void isp1760_ep_fifo_flush(struct usb_ep *ep)
{
 struct isp1760_ep *uep = ep_to_udc_ep(ep);
 struct isp1760_udc *udc = uep->udc;
 unsigned long flags;

 spin_lock_irqsave(&udc->lock, flags);

 isp1760_udc_select_ep(uep);





 isp1760_udc_write(udc, DC_CTRLFUNC, DC_CLBUF);
 isp1760_udc_write(udc, DC_CTRLFUNC, DC_CLBUF);

 spin_unlock_irqrestore(&udc->lock, flags);
}
