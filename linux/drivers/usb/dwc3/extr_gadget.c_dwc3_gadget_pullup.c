
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct dwc3 {scalar_t__ ep0state; int lock; int dev; int ep0_in_setup; } ;


 int DWC3_PULL_UP_TIMEOUT ;
 scalar_t__ EP0_SETUP_PHASE ;
 int ETIMEDOUT ;
 int dev_err (int ,char*) ;
 int dwc3_gadget_run_stop (struct dwc3*,int,int) ;
 struct dwc3* gadget_to_dwc (struct usb_gadget*) ;
 int msecs_to_jiffies (int ) ;
 int reinit_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int dwc3_gadget_pullup(struct usb_gadget *g, int is_on)
{
 struct dwc3 *dwc = gadget_to_dwc(g);
 unsigned long flags;
 int ret;

 is_on = !!is_on;





 if (!is_on && dwc->ep0state != EP0_SETUP_PHASE) {
  reinit_completion(&dwc->ep0_in_setup);

  ret = wait_for_completion_timeout(&dwc->ep0_in_setup,
    msecs_to_jiffies(DWC3_PULL_UP_TIMEOUT));
  if (ret == 0) {
   dev_err(dwc->dev, "timed out waiting for SETUP phase\n");
   return -ETIMEDOUT;
  }
 }

 spin_lock_irqsave(&dwc->lock, flags);
 ret = dwc3_gadget_run_stop(dwc, is_on, 0);
 spin_unlock_irqrestore(&dwc->lock, flags);

 return ret;
}
