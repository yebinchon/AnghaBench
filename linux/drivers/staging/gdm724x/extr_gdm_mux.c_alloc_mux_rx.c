
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mux_rx {struct mux_rx* buf; int urb; } ;


 int GFP_KERNEL ;
 int MUX_RX_MAX_SIZE ;
 int kfree (struct mux_rx*) ;
 struct mux_rx* kmalloc (int ,int ) ;
 struct mux_rx* kzalloc (int,int ) ;
 int usb_alloc_urb (int ,int ) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static struct mux_rx *alloc_mux_rx(void)
{
 struct mux_rx *r;

 r = kzalloc(sizeof(*r), GFP_KERNEL);
 if (!r)
  return ((void*)0);

 r->urb = usb_alloc_urb(0, GFP_KERNEL);
 r->buf = kmalloc(MUX_RX_MAX_SIZE, GFP_KERNEL);
 if (!r->urb || !r->buf) {
  usb_free_urb(r->urb);
  kfree(r->buf);
  kfree(r);
  return ((void*)0);
 }

 return r;
}
