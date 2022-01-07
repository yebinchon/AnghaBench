
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_rx {struct usb_rx* buf; int urb; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int RX_BUF_SIZE ;
 int kfree (struct usb_rx*) ;
 void* kmalloc (int,int ) ;
 int usb_alloc_urb (int ,int ) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static struct usb_rx *alloc_rx_struct(void)
{
 struct usb_rx *r = ((void*)0);
 int ret = 0;

 r = kmalloc(sizeof(*r), GFP_KERNEL);
 if (!r) {
  ret = -ENOMEM;
  goto out;
 }

 r->urb = usb_alloc_urb(0, GFP_KERNEL);
 r->buf = kmalloc(RX_BUF_SIZE, GFP_KERNEL);
 if (!r->urb || !r->buf) {
  ret = -ENOMEM;
  goto out;
 }
out:

 if (ret < 0) {
  if (r) {
   usb_free_urb(r->urb);
   kfree(r->buf);
   kfree(r);
  }
  return ((void*)0);
 }

 return r;
}
