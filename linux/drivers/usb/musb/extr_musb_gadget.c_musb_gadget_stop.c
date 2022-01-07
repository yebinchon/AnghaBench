
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_gadget {int dummy; } ;
struct musb {int controller; int irq_work; int lock; int * gadget_driver; scalar_t__ is_active; TYPE_1__* xceiv; int g; } ;
struct TYPE_4__ {int state; } ;
struct TYPE_3__ {TYPE_2__* otg; } ;


 int OTG_STATE_UNDEFINED ;
 struct musb* gadget_to_musb (struct usb_gadget*) ;
 int musb_gadget_vbus_draw (int *,int ) ;
 int musb_hnp_stop (struct musb*) ;
 int musb_platform_try_idle (struct musb*,int ) ;
 int musb_stop (struct musb*) ;
 int otg_set_peripheral (TYPE_2__*,int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int musb_gadget_stop(struct usb_gadget *g)
{
 struct musb *musb = gadget_to_musb(g);
 unsigned long flags;

 pm_runtime_get_sync(musb->controller);






 spin_lock_irqsave(&musb->lock, flags);

 musb_hnp_stop(musb);

 (void) musb_gadget_vbus_draw(&musb->g, 0);

 musb->xceiv->otg->state = OTG_STATE_UNDEFINED;
 musb_stop(musb);
 otg_set_peripheral(musb->xceiv->otg, ((void*)0));

 musb->is_active = 0;
 musb->gadget_driver = ((void*)0);
 musb_platform_try_idle(musb, 0);
 spin_unlock_irqrestore(&musb->lock, flags);
 schedule_delayed_work(&musb->irq_work, 0);

 pm_runtime_mark_last_busy(musb->controller);
 pm_runtime_put_autosuspend(musb->controller);

 return 0;
}
