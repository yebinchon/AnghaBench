
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct urbp {int urbp_list; scalar_t__ miter_started; struct urb* urb; } ;
struct urb {scalar_t__ dev; int error_count; int pipe; struct urbp* hcpriv; } ;
struct dummy_hcd {scalar_t__ udev; TYPE_1__* dum; int timer; struct urbp* next_frame_urbp; int urbp_list; } ;
typedef int gfp_t ;
struct TYPE_2__ {int lock; } ;


 int ENOMEM ;
 scalar_t__ PIPE_CONTROL ;
 int dev_err (int ,char*) ;
 int dummy_dev (struct dummy_hcd*) ;
 int dummy_validate_stream (struct dummy_hcd*,struct urb*) ;
 struct dummy_hcd* hcd_to_dummy_hcd (struct usb_hcd*) ;
 scalar_t__ jiffies ;
 int kfree (struct urbp*) ;
 struct urbp* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer_pending (int *) ;
 scalar_t__ unlikely (int) ;
 int usb_get_dev (scalar_t__) ;
 int usb_hcd_link_urb_to_ep (struct usb_hcd*,struct urb*) ;
 scalar_t__ usb_pipetype (int ) ;

__attribute__((used)) static int dummy_urb_enqueue(
 struct usb_hcd *hcd,
 struct urb *urb,
 gfp_t mem_flags
) {
 struct dummy_hcd *dum_hcd;
 struct urbp *urbp;
 unsigned long flags;
 int rc;

 urbp = kmalloc(sizeof *urbp, mem_flags);
 if (!urbp)
  return -ENOMEM;
 urbp->urb = urb;
 urbp->miter_started = 0;

 dum_hcd = hcd_to_dummy_hcd(hcd);
 spin_lock_irqsave(&dum_hcd->dum->lock, flags);

 rc = dummy_validate_stream(dum_hcd, urb);
 if (rc) {
  kfree(urbp);
  goto done;
 }

 rc = usb_hcd_link_urb_to_ep(hcd, urb);
 if (rc) {
  kfree(urbp);
  goto done;
 }

 if (!dum_hcd->udev) {
  dum_hcd->udev = urb->dev;
  usb_get_dev(dum_hcd->udev);
 } else if (unlikely(dum_hcd->udev != urb->dev))
  dev_err(dummy_dev(dum_hcd), "usb_device address has changed!\n");

 list_add_tail(&urbp->urbp_list, &dum_hcd->urbp_list);
 urb->hcpriv = urbp;
 if (!dum_hcd->next_frame_urbp)
  dum_hcd->next_frame_urbp = urbp;
 if (usb_pipetype(urb->pipe) == PIPE_CONTROL)
  urb->error_count = 1;


 if (!timer_pending(&dum_hcd->timer))
  mod_timer(&dum_hcd->timer, jiffies + 1);

 done:
 spin_unlock_irqrestore(&dum_hcd->dum->lock, flags);
 return rc;
}
