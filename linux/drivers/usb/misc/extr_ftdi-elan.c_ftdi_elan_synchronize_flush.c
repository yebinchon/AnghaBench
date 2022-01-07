
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct usb_ftdi {TYPE_1__* udev; int bulk_out_endpointAddr; } ;
struct urb {int transfer_dma; int transfer_flags; } ;
struct TYPE_5__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int dev_err (int *,char*) ;
 int ftdi_elan_write_bulk_callback ;
 char* usb_alloc_coherent (TYPE_1__*,int,int ,int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (struct urb*,TYPE_1__*,int ,char*,int,int ,struct usb_ftdi*) ;
 int usb_free_coherent (TYPE_1__*,int,char*,int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_sndbulkpipe (TYPE_1__*,int ) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int ftdi_elan_synchronize_flush(struct usb_ftdi *ftdi)
{
 int retval;
 struct urb *urb;
 char *buf;
 int I = 257;
 int i = 0;
 urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!urb)
  return -ENOMEM;
 buf = usb_alloc_coherent(ftdi->udev, I, GFP_KERNEL, &urb->transfer_dma);
 if (!buf) {
  dev_err(&ftdi->udev->dev, "could not get a buffer for flush sequence\n");
  usb_free_urb(urb);
  return -ENOMEM;
 }
 while (I-- > 0)
  buf[i++] = 0x55;
 usb_fill_bulk_urb(urb, ftdi->udev, usb_sndbulkpipe(ftdi->udev,
          ftdi->bulk_out_endpointAddr), buf, i,
     ftdi_elan_write_bulk_callback, ftdi);
 urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
 retval = usb_submit_urb(urb, GFP_KERNEL);
 if (retval) {
  dev_err(&ftdi->udev->dev, "failed to submit urb containing the flush sequence\n");
  usb_free_coherent(ftdi->udev, i, buf, urb->transfer_dma);
  usb_free_urb(urb);
  return -ENOMEM;
 }
 usb_free_urb(urb);
 return 0;
}
