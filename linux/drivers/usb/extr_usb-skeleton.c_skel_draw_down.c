
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_skel {int bulk_in_urb; int submitted; } ;


 int usb_kill_anchored_urbs (int *) ;
 int usb_kill_urb (int ) ;
 int usb_wait_anchor_empty_timeout (int *,int) ;

__attribute__((used)) static void skel_draw_down(struct usb_skel *dev)
{
 int time;

 time = usb_wait_anchor_empty_timeout(&dev->submitted, 1000);
 if (!time)
  usb_kill_anchored_urbs(&dev->submitted);
 usb_kill_urb(dev->bulk_in_urb);
}
