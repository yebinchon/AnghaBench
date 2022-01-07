
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct giveback_urb_bh {int running; int bh; int lock; int head; } ;
struct usb_hcd {struct giveback_urb_bh low_prio_bh; struct giveback_urb_bh high_prio_bh; } ;
struct urb {int unlinked; int urb_list; int pipe; int dev; } ;


 int __usb_hcd_giveback_urb (struct urb*) ;
 int hcd_giveback_urb_in_bh (struct usb_hcd*) ;
 int is_root_hub (int ) ;
 scalar_t__ likely (int) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_hi_schedule (int *) ;
 int tasklet_schedule (int *) ;
 scalar_t__ usb_pipeint (int ) ;
 scalar_t__ usb_pipeisoc (int ) ;

void usb_hcd_giveback_urb(struct usb_hcd *hcd, struct urb *urb, int status)
{
 struct giveback_urb_bh *bh;
 bool running, high_prio_bh;


 if (likely(!urb->unlinked))
  urb->unlinked = status;

 if (!hcd_giveback_urb_in_bh(hcd) && !is_root_hub(urb->dev)) {
  __usb_hcd_giveback_urb(urb);
  return;
 }

 if (usb_pipeisoc(urb->pipe) || usb_pipeint(urb->pipe)) {
  bh = &hcd->high_prio_bh;
  high_prio_bh = 1;
 } else {
  bh = &hcd->low_prio_bh;
  high_prio_bh = 0;
 }

 spin_lock(&bh->lock);
 list_add_tail(&urb->urb_list, &bh->head);
 running = bh->running;
 spin_unlock(&bh->lock);

 if (running)
  ;
 else if (high_prio_bh)
  tasklet_hi_schedule(&bh->bh);
 else
  tasklet_schedule(&bh->bh);
}
