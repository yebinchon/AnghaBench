
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct musb {int is_suspended; TYPE_3__* xceiv; int lock; int g; TYPE_1__* gadget_driver; int mregs; } ;
struct TYPE_6__ {TYPE_2__* otg; } ;
struct TYPE_5__ {int state; } ;
struct TYPE_4__ {int (* suspend ) (int *) ;} ;


 int MUSB_DEVCTL ;
 int MUSB_DEVCTL_VBUS ;


 int WARNING (char*,int ) ;
 int musb_dbg (struct musb*,char*,int) ;
 int musb_readb (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int *) ;
 int usb_otg_state_string (int) ;

void musb_g_suspend(struct musb *musb)
{
 u8 devctl;

 devctl = musb_readb(musb->mregs, MUSB_DEVCTL);
 musb_dbg(musb, "musb_g_suspend: devctl %02x", devctl);

 switch (musb->xceiv->otg->state) {
 case 129:
  if ((devctl & MUSB_DEVCTL_VBUS) == MUSB_DEVCTL_VBUS)
   musb->xceiv->otg->state = 128;
  break;
 case 128:
  musb->is_suspended = 1;
  if (musb->gadget_driver && musb->gadget_driver->suspend) {
   spin_unlock(&musb->lock);
   musb->gadget_driver->suspend(&musb->g);
   spin_lock(&musb->lock);
  }
  break;
 default:



  WARNING("unhandled SUSPEND transition (%s)",
    usb_otg_state_string(musb->xceiv->otg->state));
 }
}
