
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct urb {int transfer_flags; } ;
struct nfcmrvl_usb_drv_data {TYPE_2__* udev; int bulk_anchor; TYPE_1__* bulk_rx_ep; } ;
typedef int gfp_t ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int bEndpointAddress; } ;


 int ENODEV ;
 int ENOMEM ;
 int EPERM ;
 int NFCMRVL_NCI_MAX_EVENT_SIZE ;
 int URB_FREE_BUFFER ;
 unsigned char* kmalloc (int,int ) ;
 int nfc_err (int *,char*,struct urb*,int) ;
 int nfcmrvl_bulk_complete ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,TYPE_2__*,unsigned int,unsigned char*,int,int ,struct nfcmrvl_usb_drv_data*) ;
 int usb_free_urb (struct urb*) ;
 int usb_mark_last_busy (TYPE_2__*) ;
 unsigned int usb_rcvbulkpipe (TYPE_2__*,int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static int
nfcmrvl_submit_bulk_urb(struct nfcmrvl_usb_drv_data *drv_data, gfp_t mem_flags)
{
 struct urb *urb;
 unsigned char *buf;
 unsigned int pipe;
 int err, size = NFCMRVL_NCI_MAX_EVENT_SIZE;

 if (!drv_data->bulk_rx_ep)
  return -ENODEV;

 urb = usb_alloc_urb(0, mem_flags);
 if (!urb)
  return -ENOMEM;

 buf = kmalloc(size, mem_flags);
 if (!buf) {
  usb_free_urb(urb);
  return -ENOMEM;
 }

 pipe = usb_rcvbulkpipe(drv_data->udev,
          drv_data->bulk_rx_ep->bEndpointAddress);

 usb_fill_bulk_urb(urb, drv_data->udev, pipe, buf, size,
     nfcmrvl_bulk_complete, drv_data);

 urb->transfer_flags |= URB_FREE_BUFFER;

 usb_mark_last_busy(drv_data->udev);
 usb_anchor_urb(urb, &drv_data->bulk_anchor);

 err = usb_submit_urb(urb, mem_flags);
 if (err) {
  if (err != -EPERM && err != -ENODEV)
   nfc_err(&drv_data->udev->dev,
    "urb %p submission failed (%d)\n", urb, -err);
  usb_unanchor_urb(urb);
 }

 usb_free_urb(urb);

 return err;
}
