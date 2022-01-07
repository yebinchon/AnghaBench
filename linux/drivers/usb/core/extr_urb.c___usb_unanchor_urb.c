
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_anchor {int wait; } ;
struct urb {int anchor_list; int * anchor; } ;


 int list_del (int *) ;
 scalar_t__ usb_anchor_check_wakeup (struct usb_anchor*) ;
 int usb_put_urb (struct urb*) ;
 int wake_up (int *) ;

__attribute__((used)) static void __usb_unanchor_urb(struct urb *urb, struct usb_anchor *anchor)
{
 urb->anchor = ((void*)0);
 list_del(&urb->anchor_list);
 usb_put_urb(urb);
 if (usb_anchor_check_wakeup(anchor))
  wake_up(&anchor->wait);
}
