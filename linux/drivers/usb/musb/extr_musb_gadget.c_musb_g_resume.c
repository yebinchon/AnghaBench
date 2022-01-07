
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct musb {int is_active; TYPE_3__* xceiv; int lock; int g; TYPE_1__* gadget_driver; scalar_t__ is_suspended; } ;
struct TYPE_6__ {TYPE_2__* otg; } ;
struct TYPE_5__ {int state; } ;
struct TYPE_4__ {int (* resume ) (int *) ;} ;





 int WARNING (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int *) ;
 int usb_otg_state_string (int) ;

void musb_g_resume(struct musb *musb)
{
 musb->is_suspended = 0;
 switch (musb->xceiv->otg->state) {
 case 130:
  break;
 case 128:
 case 129:
  musb->is_active = 1;
  if (musb->gadget_driver && musb->gadget_driver->resume) {
   spin_unlock(&musb->lock);
   musb->gadget_driver->resume(&musb->g);
   spin_lock(&musb->lock);
  }
  break;
 default:
  WARNING("unhandled RESUME transition (%s)\n",
    usb_otg_state_string(musb->xceiv->otg->state));
 }
}
