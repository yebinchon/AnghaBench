
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct urb {TYPE_2__* ep; int urb_list; scalar_t__ unlinked; TYPE_1__* dev; int reject; } ;
struct TYPE_4__ {int urb_list; int enabled; } ;
struct TYPE_3__ {int can_submit; } ;


 int EHOSTUNREACH ;
 int ENOENT ;
 int EPERM ;
 int ESHUTDOWN ;
 scalar_t__ HCD_RH_RUNNING (struct usb_hcd*) ;
 int atomic_read (int *) ;
 int hcd_urb_list_lock ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

int usb_hcd_link_urb_to_ep(struct usb_hcd *hcd, struct urb *urb)
{
 int rc = 0;

 spin_lock(&hcd_urb_list_lock);


 if (unlikely(atomic_read(&urb->reject))) {
  rc = -EPERM;
  goto done;
 }

 if (unlikely(!urb->ep->enabled)) {
  rc = -ENOENT;
  goto done;
 }

 if (unlikely(!urb->dev->can_submit)) {
  rc = -EHOSTUNREACH;
  goto done;
 }





 if (HCD_RH_RUNNING(hcd)) {
  urb->unlinked = 0;
  list_add_tail(&urb->urb_list, &urb->ep->urb_list);
 } else {
  rc = -ESHUTDOWN;
  goto done;
 }
 done:
 spin_unlock(&hcd_urb_list_lock);
 return rc;
}
