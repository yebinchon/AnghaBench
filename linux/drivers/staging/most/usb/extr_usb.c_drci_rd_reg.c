
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_device {int dummy; } ;
typedef int __le16 ;


 int DRCI_READ_REQ ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int,int ,int *,int,int) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static inline int drci_rd_reg(struct usb_device *dev, u16 reg, u16 *buf)
{
 int retval;
 __le16 *dma_buf = kzalloc(sizeof(*dma_buf), GFP_KERNEL);
 u8 req_type = USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE;

 if (!dma_buf)
  return -ENOMEM;

 retval = usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
     DRCI_READ_REQ, req_type,
     0x0000,
     reg, dma_buf, sizeof(*dma_buf), 5 * HZ);
 *buf = le16_to_cpu(*dma_buf);
 kfree(dma_buf);

 return retval;
}
