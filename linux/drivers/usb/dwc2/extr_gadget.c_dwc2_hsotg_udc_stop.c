
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_gadget {int dummy; } ;
struct TYPE_7__ {int speed; } ;
struct dwc2_hsotg {int num_of_eps; scalar_t__ dr_mode; TYPE_4__* uphy; int lock; scalar_t__ enabled; TYPE_3__ gadget; int * driver; TYPE_2__** eps_out; TYPE_1__** eps_in; } ;
struct TYPE_8__ {int otg; } ;
struct TYPE_6__ {int ep; } ;
struct TYPE_5__ {int ep; } ;


 int ENODEV ;
 int IS_ERR_OR_NULL (TYPE_4__*) ;
 scalar_t__ USB_DR_MODE_PERIPHERAL ;
 int USB_SPEED_UNKNOWN ;
 int dwc2_hsotg_ep_disable_lock (int *) ;
 int dwc2_lowlevel_hw_disable (struct dwc2_hsotg*) ;
 int otg_set_peripheral (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct dwc2_hsotg* to_hsotg (struct usb_gadget*) ;

__attribute__((used)) static int dwc2_hsotg_udc_stop(struct usb_gadget *gadget)
{
 struct dwc2_hsotg *hsotg = to_hsotg(gadget);
 unsigned long flags = 0;
 int ep;

 if (!hsotg)
  return -ENODEV;


 for (ep = 1; ep < hsotg->num_of_eps; ep++) {
  if (hsotg->eps_in[ep])
   dwc2_hsotg_ep_disable_lock(&hsotg->eps_in[ep]->ep);
  if (hsotg->eps_out[ep])
   dwc2_hsotg_ep_disable_lock(&hsotg->eps_out[ep]->ep);
 }

 spin_lock_irqsave(&hsotg->lock, flags);

 hsotg->driver = ((void*)0);
 hsotg->gadget.speed = USB_SPEED_UNKNOWN;
 hsotg->enabled = 0;

 spin_unlock_irqrestore(&hsotg->lock, flags);

 if (!IS_ERR_OR_NULL(hsotg->uphy))
  otg_set_peripheral(hsotg->uphy->otg, ((void*)0));

 if (hsotg->dr_mode == USB_DR_MODE_PERIPHERAL)
  dwc2_lowlevel_hw_disable(hsotg);

 return 0;
}
