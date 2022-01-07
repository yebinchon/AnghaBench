
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int use_count; int ep; int dev; int reject; } ;


 int ENOENT ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int might_sleep () ;
 int usb_hcd_unlink_urb (struct urb*,int ) ;
 int usb_kill_urb_queue ;
 int wait_event (int ,int) ;

void usb_poison_urb(struct urb *urb)
{
 might_sleep();
 if (!urb)
  return;
 atomic_inc(&urb->reject);

 if (!urb->dev || !urb->ep)
  return;

 usb_hcd_unlink_urb(urb, -ENOENT);
 wait_event(usb_kill_urb_queue, atomic_read(&urb->use_count) == 0);
}
