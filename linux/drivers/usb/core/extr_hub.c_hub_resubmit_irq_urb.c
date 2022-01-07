
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hub {int irq_urb_lock; int irq_urb_retry; int intfdev; int urb; scalar_t__ quiescing; } ;


 int ENODEV ;
 int EPERM ;
 int ESHUTDOWN ;
 int GFP_ATOMIC ;
 scalar_t__ HZ ;
 int dev_err (int ,char*,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static void hub_resubmit_irq_urb(struct usb_hub *hub)
{
 unsigned long flags;
 int status;

 spin_lock_irqsave(&hub->irq_urb_lock, flags);

 if (hub->quiescing) {
  spin_unlock_irqrestore(&hub->irq_urb_lock, flags);
  return;
 }

 status = usb_submit_urb(hub->urb, GFP_ATOMIC);
 if (status && status != -ENODEV && status != -EPERM &&
     status != -ESHUTDOWN) {
  dev_err(hub->intfdev, "resubmit --> %d\n", status);
  mod_timer(&hub->irq_urb_retry, jiffies + HZ);
 }

 spin_unlock_irqrestore(&hub->irq_urb_lock, flags);
}
