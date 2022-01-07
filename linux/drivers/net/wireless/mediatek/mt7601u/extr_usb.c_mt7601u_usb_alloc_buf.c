
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct mt7601u_dma_buf {size_t len; int buf; int urb; int dma; } ;
struct mt7601u_dev {int dummy; } ;


 int GFP_KERNEL ;
 struct usb_device* mt7601u_to_usb_dev (struct mt7601u_dev*) ;
 int usb_alloc_coherent (struct usb_device*,size_t,int ,int *) ;
 int usb_alloc_urb (int ,int ) ;

bool mt7601u_usb_alloc_buf(struct mt7601u_dev *dev, size_t len,
      struct mt7601u_dma_buf *buf)
{
 struct usb_device *usb_dev = mt7601u_to_usb_dev(dev);

 buf->len = len;
 buf->urb = usb_alloc_urb(0, GFP_KERNEL);
 buf->buf = usb_alloc_coherent(usb_dev, buf->len, GFP_KERNEL, &buf->dma);

 return !buf->urb || !buf->buf;
}
