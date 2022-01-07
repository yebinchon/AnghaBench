
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mux_tx {struct mux_tx* buf; int urb; } ;


 int GFP_ATOMIC ;
 int MUX_TX_MAX_SIZE ;
 int kfree (struct mux_tx*) ;
 struct mux_tx* kmalloc (int ,int ) ;
 struct mux_tx* kzalloc (int,int ) ;
 int usb_alloc_urb (int ,int ) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static struct mux_tx *alloc_mux_tx(int len)
{
 struct mux_tx *t;

 t = kzalloc(sizeof(*t), GFP_ATOMIC);
 if (!t)
  return ((void*)0);

 t->urb = usb_alloc_urb(0, GFP_ATOMIC);
 t->buf = kmalloc(MUX_TX_MAX_SIZE, GFP_ATOMIC);
 if (!t->urb || !t->buf) {
  usb_free_urb(t->urb);
  kfree(t->buf);
  kfree(t);
  return ((void*)0);
 }

 return t;
}
