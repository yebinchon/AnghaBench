
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_otg {int state; } ;
struct usb_gadget_driver {scalar_t__ max_speed; } ;
struct usb_gadget {int dummy; } ;
struct musb {int is_active; int controller; TYPE_1__* xceiv; int lock; int g; struct usb_gadget_driver* gadget_driver; scalar_t__ softconnect; } ;
struct TYPE_2__ {scalar_t__ last_event; struct usb_otg* otg; } ;


 int EINVAL ;
 int OTG_STATE_B_IDLE ;
 scalar_t__ USB_EVENT_ID ;
 scalar_t__ USB_SPEED_HIGH ;
 struct musb* gadget_to_musb (struct usb_gadget*) ;
 int musb_platform_set_vbus (struct musb*,int) ;
 int musb_start (struct musb*) ;
 int otg_set_peripheral (struct usb_otg*,int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int musb_gadget_start(struct usb_gadget *g,
  struct usb_gadget_driver *driver)
{
 struct musb *musb = gadget_to_musb(g);
 struct usb_otg *otg = musb->xceiv->otg;
 unsigned long flags;
 int retval = 0;

 if (driver->max_speed < USB_SPEED_HIGH) {
  retval = -EINVAL;
  goto err;
 }

 pm_runtime_get_sync(musb->controller);

 musb->softconnect = 0;
 musb->gadget_driver = driver;

 spin_lock_irqsave(&musb->lock, flags);
 musb->is_active = 1;

 otg_set_peripheral(otg, &musb->g);
 musb->xceiv->otg->state = OTG_STATE_B_IDLE;
 spin_unlock_irqrestore(&musb->lock, flags);

 musb_start(musb);





 if (musb->xceiv->last_event == USB_EVENT_ID)
  musb_platform_set_vbus(musb, 1);

 pm_runtime_mark_last_busy(musb->controller);
 pm_runtime_put_autosuspend(musb->controller);

 return 0;

err:
 return retval;
}
