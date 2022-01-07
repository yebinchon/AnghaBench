
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_tx {struct usb_tx* buf; int urb; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int kfree (struct usb_tx*) ;
 struct usb_tx* kmalloc (int,int ) ;
 struct usb_tx* kzalloc (int,int ) ;
 int usb_alloc_urb (int ,int ) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static struct usb_tx *alloc_tx_struct(int len)
{
 struct usb_tx *t = ((void*)0);
 int ret = 0;

 t = kzalloc(sizeof(*t), GFP_ATOMIC);
 if (!t) {
  ret = -ENOMEM;
  goto out;
 }

 t->urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!(len % 512))
  len++;

 t->buf = kmalloc(len, GFP_ATOMIC);
 if (!t->urb || !t->buf) {
  ret = -ENOMEM;
  goto out;
 }

out:
 if (ret < 0) {
  if (t) {
   usb_free_urb(t->urb);
   kfree(t->buf);
   kfree(t);
  }
  return ((void*)0);
 }

 return t;
}
