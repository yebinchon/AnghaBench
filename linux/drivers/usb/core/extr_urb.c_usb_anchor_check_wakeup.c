
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_anchor {int urb_list; int suspend_wakeups; } ;


 scalar_t__ atomic_read (int *) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static int usb_anchor_check_wakeup(struct usb_anchor *anchor)
{
 return atomic_read(&anchor->suspend_wakeups) == 0 &&
  list_empty(&anchor->urb_list);
}
