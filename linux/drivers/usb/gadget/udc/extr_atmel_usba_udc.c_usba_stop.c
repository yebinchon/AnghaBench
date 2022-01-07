
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed; } ;
struct usba_udc {int lock; TYPE_1__ gadget; scalar_t__ suspended; } ;


 int CTRL ;
 int USBA_DISABLE_MASK ;
 int USB_SPEED_UNKNOWN ;
 int reset_all_endpoints (struct usba_udc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stop_clock (struct usba_udc*) ;
 int toggle_bias (struct usba_udc*,int ) ;
 int usba_writel (struct usba_udc*,int ,int ) ;

__attribute__((used)) static void usba_stop(struct usba_udc *udc)
{
 unsigned long flags;

 if (udc->suspended)
  return;

 spin_lock_irqsave(&udc->lock, flags);
 udc->gadget.speed = USB_SPEED_UNKNOWN;
 reset_all_endpoints(udc);


 toggle_bias(udc, 0);
 usba_writel(udc, CTRL, USBA_DISABLE_MASK);
 spin_unlock_irqrestore(&udc->lock, flags);

 stop_clock(udc);
}
