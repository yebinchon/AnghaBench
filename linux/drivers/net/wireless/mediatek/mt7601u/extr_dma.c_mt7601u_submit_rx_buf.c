
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;
struct mt7601u_dma_buf_rx {int urb; int p; } ;
struct mt7601u_dev {int dev; int * in_eps; } ;
typedef int gfp_t ;


 size_t MT_EP_IN_PKT_RX ;
 int MT_RX_URB_SIZE ;
 int dev_err (int ,char*,int) ;
 int mt7601u_complete_rx ;
 struct usb_device* mt7601u_to_usb_dev (struct mt7601u_dev*) ;
 int * page_address (int ) ;
 int trace_mt_submit_urb (struct mt7601u_dev*,int ) ;
 int usb_fill_bulk_urb (int ,struct usb_device*,unsigned int,int *,int ,int ,struct mt7601u_dev*) ;
 unsigned int usb_rcvbulkpipe (struct usb_device*,int ) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int mt7601u_submit_rx_buf(struct mt7601u_dev *dev,
     struct mt7601u_dma_buf_rx *e, gfp_t gfp)
{
 struct usb_device *usb_dev = mt7601u_to_usb_dev(dev);
 u8 *buf = page_address(e->p);
 unsigned pipe;
 int ret;

 pipe = usb_rcvbulkpipe(usb_dev, dev->in_eps[MT_EP_IN_PKT_RX]);

 usb_fill_bulk_urb(e->urb, usb_dev, pipe, buf, MT_RX_URB_SIZE,
     mt7601u_complete_rx, dev);

 trace_mt_submit_urb(dev, e->urb);
 ret = usb_submit_urb(e->urb, gfp);
 if (ret)
  dev_err(dev->dev, "Error: submit RX URB failed:%d\n", ret);

 return ret;
}
