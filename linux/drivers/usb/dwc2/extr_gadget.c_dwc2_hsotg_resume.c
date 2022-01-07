
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dwc2_hsotg {scalar_t__ lx_state; int lock; scalar_t__ enabled; TYPE_2__* driver; int dev; } ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ driver; } ;


 scalar_t__ DWC2_L2 ;
 int dev_info (int ,char*,int ) ;
 int dwc2_enable_acg (struct dwc2_hsotg*) ;
 int dwc2_hsotg_core_connect (struct dwc2_hsotg*) ;
 int dwc2_hsotg_core_init_disconnected (struct dwc2_hsotg*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int dwc2_hsotg_resume(struct dwc2_hsotg *hsotg)
{
 unsigned long flags;

 if (hsotg->lx_state == DWC2_L2)
  return 0;

 if (hsotg->driver) {
  dev_info(hsotg->dev, "resuming usb gadget %s\n",
    hsotg->driver->driver.name);

  spin_lock_irqsave(&hsotg->lock, flags);
  dwc2_hsotg_core_init_disconnected(hsotg, 0);
  if (hsotg->enabled) {

   dwc2_enable_acg(hsotg);
   dwc2_hsotg_core_connect(hsotg);
  }
  spin_unlock_irqrestore(&hsotg->lock, flags);
 }

 return 0;
}
