
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int controller; } ;
struct usb_hcd {int rh_timer; int uses_new_polling; struct urb* status_urb; TYPE_2__ self; } ;
struct urb {unsigned int transfer_buffer_length; struct usb_hcd* hcpriv; TYPE_1__* dev; } ;
struct TYPE_3__ {int maxchild; } ;


 int EINVAL ;
 scalar_t__ HCD_POLL_PENDING (struct usb_hcd*) ;
 int HZ ;
 int dev_dbg (int ,char*) ;
 int hcd_root_hub_lock ;
 int jiffies ;
 int mod_timer (int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_hcd_link_urb_to_ep (struct usb_hcd*,struct urb*) ;

__attribute__((used)) static int rh_queue_status (struct usb_hcd *hcd, struct urb *urb)
{
 int retval;
 unsigned long flags;
 unsigned len = 1 + (urb->dev->maxchild / 8);

 spin_lock_irqsave (&hcd_root_hub_lock, flags);
 if (hcd->status_urb || urb->transfer_buffer_length < len) {
  dev_dbg (hcd->self.controller, "not queuing rh status urb\n");
  retval = -EINVAL;
  goto done;
 }

 retval = usb_hcd_link_urb_to_ep(hcd, urb);
 if (retval)
  goto done;

 hcd->status_urb = urb;
 urb->hcpriv = hcd;
 if (!hcd->uses_new_polling)
  mod_timer(&hcd->rh_timer, (jiffies/(HZ/4) + 1) * (HZ/4));


 else if (HCD_POLL_PENDING(hcd))
  mod_timer(&hcd->rh_timer, jiffies);
 retval = 0;
 done:
 spin_unlock_irqrestore (&hcd_root_hub_lock, flags);
 return retval;
}
