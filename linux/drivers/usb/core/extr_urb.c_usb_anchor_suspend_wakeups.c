
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_anchor {int suspend_wakeups; } ;


 int atomic_inc (int *) ;

void usb_anchor_suspend_wakeups(struct usb_anchor *anchor)
{
 if (anchor)
  atomic_inc(&anchor->suspend_wakeups);
}
