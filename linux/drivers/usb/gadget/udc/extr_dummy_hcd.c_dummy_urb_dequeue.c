
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct urb {int dummy; } ;
struct dummy_hcd {scalar_t__ rh_state; TYPE_1__* dum; int timer; int urbp_list; } ;
struct TYPE_2__ {int lock; } ;


 scalar_t__ DUMMY_RH_RUNNING ;
 struct dummy_hcd* hcd_to_dummy_hcd (struct usb_hcd*) ;
 int jiffies ;
 int list_empty (int *) ;
 int mod_timer (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_hcd_check_unlink_urb (struct usb_hcd*,struct urb*,int) ;

__attribute__((used)) static int dummy_urb_dequeue(struct usb_hcd *hcd, struct urb *urb, int status)
{
 struct dummy_hcd *dum_hcd;
 unsigned long flags;
 int rc;



 dum_hcd = hcd_to_dummy_hcd(hcd);
 spin_lock_irqsave(&dum_hcd->dum->lock, flags);

 rc = usb_hcd_check_unlink_urb(hcd, urb, status);
 if (!rc && dum_hcd->rh_state != DUMMY_RH_RUNNING &&
   !list_empty(&dum_hcd->urbp_list))
  mod_timer(&dum_hcd->timer, jiffies);

 spin_unlock_irqrestore(&dum_hcd->dum->lock, flags);
 return rc;
}
