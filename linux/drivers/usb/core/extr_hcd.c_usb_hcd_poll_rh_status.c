
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int rh_timer; struct urb* status_urb; scalar_t__ uses_new_polling; int flags; TYPE_1__* driver; int rh_pollable; } ;
struct urb {int actual_length; int transfer_buffer; } ;
struct TYPE_2__ {int (* hub_status_data ) (struct usb_hcd*,char*) ;} ;


 int HCD_FLAG_POLL_PENDING ;
 int HCD_POLL_RH (struct usb_hcd*) ;
 int HZ ;
 int clear_bit (int ,int *) ;
 int hcd_root_hub_lock ;
 int jiffies ;
 int memcpy (int ,char*,int) ;
 int mod_timer (int *,int) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct usb_hcd*,char*) ;
 scalar_t__ unlikely (int) ;
 int usb_hcd_giveback_urb (struct usb_hcd*,struct urb*,int ) ;
 int usb_hcd_unlink_urb_from_ep (struct usb_hcd*,struct urb*) ;

void usb_hcd_poll_rh_status(struct usb_hcd *hcd)
{
 struct urb *urb;
 int length;
 unsigned long flags;
 char buffer[6];

 if (unlikely(!hcd->rh_pollable))
  return;
 if (!hcd->uses_new_polling && !hcd->status_urb)
  return;

 length = hcd->driver->hub_status_data(hcd, buffer);
 if (length > 0) {


  spin_lock_irqsave(&hcd_root_hub_lock, flags);
  urb = hcd->status_urb;
  if (urb) {
   clear_bit(HCD_FLAG_POLL_PENDING, &hcd->flags);
   hcd->status_urb = ((void*)0);
   urb->actual_length = length;
   memcpy(urb->transfer_buffer, buffer, length);

   usb_hcd_unlink_urb_from_ep(hcd, urb);
   usb_hcd_giveback_urb(hcd, urb, 0);
  } else {
   length = 0;
   set_bit(HCD_FLAG_POLL_PENDING, &hcd->flags);
  }
  spin_unlock_irqrestore(&hcd_root_hub_lock, flags);
 }





 if (hcd->uses_new_polling ? HCD_POLL_RH(hcd) :
   (length == 0 && hcd->status_urb != ((void*)0)))
  mod_timer (&hcd->rh_timer, (jiffies/(HZ/4) + 1) * (HZ/4));
}
