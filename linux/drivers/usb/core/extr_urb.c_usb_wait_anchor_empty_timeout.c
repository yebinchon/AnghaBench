
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_anchor {int wait; } ;


 int msecs_to_jiffies (unsigned int) ;
 int usb_anchor_check_wakeup (struct usb_anchor*) ;
 int wait_event_timeout (int ,int ,int ) ;

int usb_wait_anchor_empty_timeout(struct usb_anchor *anchor,
      unsigned int timeout)
{
 return wait_event_timeout(anchor->wait,
      usb_anchor_check_wakeup(anchor),
      msecs_to_jiffies(timeout));
}
