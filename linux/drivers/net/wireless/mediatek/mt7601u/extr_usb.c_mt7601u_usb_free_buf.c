
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct mt7601u_dma_buf {int urb; int dma; int buf; int len; } ;
struct mt7601u_dev {int dummy; } ;


 struct usb_device* mt7601u_to_usb_dev (struct mt7601u_dev*) ;
 int usb_free_coherent (struct usb_device*,int ,int ,int ) ;
 int usb_free_urb (int ) ;

void mt7601u_usb_free_buf(struct mt7601u_dev *dev, struct mt7601u_dma_buf *buf)
{
 struct usb_device *usb_dev = mt7601u_to_usb_dev(dev);

 usb_free_coherent(usb_dev, buf->len, buf->buf, buf->dma);
 usb_free_urb(buf->urb);
}
