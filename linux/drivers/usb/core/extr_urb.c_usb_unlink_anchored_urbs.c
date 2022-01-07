
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_anchor {int dummy; } ;
struct urb {int dummy; } ;


 struct urb* usb_get_from_anchor (struct usb_anchor*) ;
 int usb_put_urb (struct urb*) ;
 int usb_unlink_urb (struct urb*) ;

void usb_unlink_anchored_urbs(struct usb_anchor *anchor)
{
 struct urb *victim;

 while ((victim = usb_get_from_anchor(anchor)) != ((void*)0)) {
  usb_unlink_urb(victim);
  usb_put_urb(victim);
 }
}
