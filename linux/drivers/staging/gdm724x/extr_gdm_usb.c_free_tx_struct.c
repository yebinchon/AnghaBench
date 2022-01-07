
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_tx {struct usb_tx* buf; int urb; } ;


 int kfree (struct usb_tx*) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static void free_tx_struct(struct usb_tx *t)
{
 if (t) {
  usb_free_urb(t->urb);
  kfree(t->buf);
  kfree(t);
 }
}
