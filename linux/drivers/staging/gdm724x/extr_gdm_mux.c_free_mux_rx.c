
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mux_rx {struct mux_rx* buf; int urb; } ;


 int kfree (struct mux_rx*) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static void free_mux_rx(struct mux_rx *r)
{
 if (r) {
  usb_free_urb(r->urb);
  kfree(r->buf);
  kfree(r);
 }
}
