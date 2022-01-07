
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct dwc3 {int ev_buf; int irq_gadget; int lock; int * gadget_driver; int dev; } ;


 int __dwc3_gadget_stop (struct dwc3*) ;
 int free_irq (int ,int ) ;
 struct dwc3* gadget_to_dwc (struct usb_gadget*) ;
 scalar_t__ pm_runtime_suspended (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dwc3_gadget_stop(struct usb_gadget *g)
{
 struct dwc3 *dwc = gadget_to_dwc(g);
 unsigned long flags;

 spin_lock_irqsave(&dwc->lock, flags);

 if (pm_runtime_suspended(dwc->dev))
  goto out;

 __dwc3_gadget_stop(dwc);

out:
 dwc->gadget_driver = ((void*)0);
 spin_unlock_irqrestore(&dwc->lock, flags);

 free_irq(dwc->irq_gadget, dwc->ev_buf);

 return 0;
}
