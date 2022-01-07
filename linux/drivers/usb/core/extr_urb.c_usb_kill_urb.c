
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int reject; int use_count; scalar_t__ ep; scalar_t__ dev; } ;


 int ENOENT ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int might_sleep () ;
 int usb_hcd_unlink_urb (struct urb*,int ) ;
 int usb_kill_urb_queue ;
 int wait_event (int ,int) ;

void usb_kill_urb(struct urb *urb)
{
 might_sleep();
 if (!(urb && urb->dev && urb->ep))
  return;
 atomic_inc(&urb->reject);

 usb_hcd_unlink_urb(urb, -ENOENT);
 wait_event(usb_kill_urb_queue, atomic_read(&urb->use_count) == 0);

 atomic_dec(&urb->reject);
}
