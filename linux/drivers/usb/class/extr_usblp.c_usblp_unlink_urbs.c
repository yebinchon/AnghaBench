
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usblp {int urbs; } ;


 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static void usblp_unlink_urbs(struct usblp *usblp)
{
 usb_kill_anchored_urbs(&usblp->urbs);
}
