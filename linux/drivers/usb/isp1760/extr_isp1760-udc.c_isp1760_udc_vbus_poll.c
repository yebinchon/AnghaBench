
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct isp1760_udc {int lock; int vbus_timer; TYPE_1__ gadget; } ;


 int DC_MODE ;
 int DC_VBUSSTAT ;
 scalar_t__ ISP1760_VBUS_POLL_INTERVAL ;
 scalar_t__ USB_STATE_POWERED ;
 struct isp1760_udc* from_timer (int ,struct timer_list*,int ) ;
 int isp1760_udc_disconnect (struct isp1760_udc*) ;
 int isp1760_udc_read (struct isp1760_udc*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct isp1760_udc* udc ;
 int vbus_timer ;

__attribute__((used)) static void isp1760_udc_vbus_poll(struct timer_list *t)
{
 struct isp1760_udc *udc = from_timer(udc, t, vbus_timer);
 unsigned long flags;

 spin_lock_irqsave(&udc->lock, flags);

 if (!(isp1760_udc_read(udc, DC_MODE) & DC_VBUSSTAT))
  isp1760_udc_disconnect(udc);
 else if (udc->gadget.state >= USB_STATE_POWERED)
  mod_timer(&udc->vbus_timer,
     jiffies + ISP1760_VBUS_POLL_INTERVAL);

 spin_unlock_irqrestore(&udc->lock, flags);
}
