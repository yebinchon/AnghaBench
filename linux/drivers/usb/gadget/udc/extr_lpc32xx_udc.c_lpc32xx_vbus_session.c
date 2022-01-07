
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct lpc32xx_udc {int lock; int enabled_ep_cnt; int ep_disable_wait_queue; scalar_t__ driver; } ;


 scalar_t__ atomic_read (int *) ;
 int pullup (struct lpc32xx_udc*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stop_activity (struct lpc32xx_udc*) ;
 struct lpc32xx_udc* to_udc (struct usb_gadget*) ;
 int udc_clk_set (struct lpc32xx_udc*,int) ;
 int udc_enable (struct lpc32xx_udc*) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int lpc32xx_vbus_session(struct usb_gadget *gadget, int is_active)
{
 unsigned long flags;
 struct lpc32xx_udc *udc = to_udc(gadget);

 spin_lock_irqsave(&udc->lock, flags);


 if (udc->driver) {
  udc_clk_set(udc, 1);
  udc_enable(udc);
  pullup(udc, is_active);
 } else {
  stop_activity(udc);
  pullup(udc, 0);

  spin_unlock_irqrestore(&udc->lock, flags);





  if (atomic_read(&udc->enabled_ep_cnt))
   wait_event_interruptible(udc->ep_disable_wait_queue,
     (atomic_read(&udc->enabled_ep_cnt) == 0));

  spin_lock_irqsave(&udc->lock, flags);

  udc_clk_set(udc, 0);
 }

 spin_unlock_irqrestore(&udc->lock, flags);

 return 0;
}
