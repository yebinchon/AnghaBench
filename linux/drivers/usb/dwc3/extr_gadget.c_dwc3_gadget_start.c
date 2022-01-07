
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
struct usb_gadget_driver {TYPE_2__ driver; } ;
struct usb_gadget {int dummy; } ;
struct TYPE_3__ {int name; } ;
struct dwc3 {int irq_gadget; int lock; int dev; struct usb_gadget_driver* gadget_driver; TYPE_1__ gadget; int ev_buf; } ;


 int EBUSY ;
 int IRQF_SHARED ;
 int __dwc3_gadget_start (struct dwc3*) ;
 int dev_err (int ,char*,int,int) ;
 int dwc3_interrupt ;
 int dwc3_thread_interrupt ;
 int free_irq (int,struct dwc3*) ;
 struct dwc3* gadget_to_dwc (struct usb_gadget*) ;
 scalar_t__ pm_runtime_active (int ) ;
 int request_threaded_irq (int,int ,int ,int ,char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dwc3_gadget_start(struct usb_gadget *g,
  struct usb_gadget_driver *driver)
{
 struct dwc3 *dwc = gadget_to_dwc(g);
 unsigned long flags;
 int ret = 0;
 int irq;

 irq = dwc->irq_gadget;
 ret = request_threaded_irq(irq, dwc3_interrupt, dwc3_thread_interrupt,
   IRQF_SHARED, "dwc3", dwc->ev_buf);
 if (ret) {
  dev_err(dwc->dev, "failed to request irq #%d --> %d\n",
    irq, ret);
  goto err0;
 }

 spin_lock_irqsave(&dwc->lock, flags);
 if (dwc->gadget_driver) {
  dev_err(dwc->dev, "%s is already bound to %s\n",
    dwc->gadget.name,
    dwc->gadget_driver->driver.name);
  ret = -EBUSY;
  goto err1;
 }

 dwc->gadget_driver = driver;

 if (pm_runtime_active(dwc->dev))
  __dwc3_gadget_start(dwc);

 spin_unlock_irqrestore(&dwc->lock, flags);

 return 0;

err1:
 spin_unlock_irqrestore(&dwc->lock, flags);
 free_irq(irq, dwc);

err0:
 return ret;
}
