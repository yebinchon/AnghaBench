
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {struct urb* status_urb; int rh_timer; int uses_new_polling; } ;
struct urb {TYPE_1__* ep; } ;
struct TYPE_2__ {int desc; } ;


 int del_timer (int *) ;
 int hcd_root_hub_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ usb_endpoint_num (int *) ;
 int usb_hcd_check_unlink_urb (struct usb_hcd*,struct urb*,int) ;
 int usb_hcd_giveback_urb (struct usb_hcd*,struct urb*,int) ;
 int usb_hcd_unlink_urb_from_ep (struct usb_hcd*,struct urb*) ;

__attribute__((used)) static int usb_rh_urb_dequeue(struct usb_hcd *hcd, struct urb *urb, int status)
{
 unsigned long flags;
 int rc;

 spin_lock_irqsave(&hcd_root_hub_lock, flags);
 rc = usb_hcd_check_unlink_urb(hcd, urb, status);
 if (rc)
  goto done;

 if (usb_endpoint_num(&urb->ep->desc) == 0) {
  ;

 } else {
  if (!hcd->uses_new_polling)
   del_timer (&hcd->rh_timer);
  if (urb == hcd->status_urb) {
   hcd->status_urb = ((void*)0);
   usb_hcd_unlink_urb_from_ep(hcd, urb);
   usb_hcd_giveback_urb(hcd, urb, status);
  }
 }
 done:
 spin_unlock_irqrestore(&hcd_root_hub_lock, flags);
 return rc;
}
