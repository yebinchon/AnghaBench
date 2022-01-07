
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_anchor {int wait; int suspend_wakeups; } ;


 int atomic_dec (int *) ;
 scalar_t__ usb_anchor_check_wakeup (struct usb_anchor*) ;
 int wake_up (int *) ;

void usb_anchor_resume_wakeups(struct usb_anchor *anchor)
{
 if (!anchor)
  return;

 atomic_dec(&anchor->suspend_wakeups);
 if (usb_anchor_check_wakeup(anchor))
  wake_up(&anchor->wait);
}
