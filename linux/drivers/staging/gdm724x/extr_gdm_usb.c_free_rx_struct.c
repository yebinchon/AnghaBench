
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_rx {struct usb_rx* buf; int urb; } ;


 int kfree (struct usb_rx*) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static void free_rx_struct(struct usb_rx *r)
{
 if (r) {
  usb_free_urb(r->urb);
  kfree(r->buf);
  kfree(r);
 }
}
