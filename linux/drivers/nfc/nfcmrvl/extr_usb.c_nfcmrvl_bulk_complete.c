
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int actual_length; int transfer_buffer; int status; struct nfcmrvl_usb_drv_data* context; } ;
struct sk_buff {int dummy; } ;
struct nfcmrvl_usb_drv_data {TYPE_1__* udev; int bulk_anchor; int flags; TYPE_2__* priv; } ;
struct TYPE_4__ {int ndev; } ;
struct TYPE_3__ {int dev; } ;


 int ENODEV ;
 int EPERM ;
 int GFP_ATOMIC ;
 int NFCMRVL_NCI_RUNNING ;
 int NFCMRVL_USB_BULK_RUNNING ;
 int dev_dbg (int *,char*,struct urb*,int ,int ) ;
 struct sk_buff* nci_skb_alloc (int ,int ,int ) ;
 int nfc_err (int *,char*,...) ;
 scalar_t__ nfcmrvl_nci_recv_frame (TYPE_2__*,struct sk_buff*) ;
 int skb_put_data (struct sk_buff*,int ,int ) ;
 int test_bit (int ,int *) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_mark_last_busy (TYPE_1__*) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static void nfcmrvl_bulk_complete(struct urb *urb)
{
 struct nfcmrvl_usb_drv_data *drv_data = urb->context;
 struct sk_buff *skb;
 int err;

 dev_dbg(&drv_data->udev->dev, "urb %p status %d count %d\n",
  urb, urb->status, urb->actual_length);

 if (!test_bit(NFCMRVL_NCI_RUNNING, &drv_data->flags))
  return;

 if (!urb->status) {
  skb = nci_skb_alloc(drv_data->priv->ndev, urb->actual_length,
        GFP_ATOMIC);
  if (!skb) {
   nfc_err(&drv_data->udev->dev, "failed to alloc mem\n");
  } else {
   skb_put_data(skb, urb->transfer_buffer,
         urb->actual_length);
   if (nfcmrvl_nci_recv_frame(drv_data->priv, skb) < 0)
    nfc_err(&drv_data->udev->dev,
     "corrupted Rx packet\n");
  }
 }

 if (!test_bit(NFCMRVL_USB_BULK_RUNNING, &drv_data->flags))
  return;

 usb_anchor_urb(urb, &drv_data->bulk_anchor);
 usb_mark_last_busy(drv_data->udev);

 err = usb_submit_urb(urb, GFP_ATOMIC);
 if (err) {



  if (err != -EPERM && err != -ENODEV)
   nfc_err(&drv_data->udev->dev,
    "urb %p failed to resubmit (%d)\n", urb, -err);
  usb_unanchor_urb(urb);
 }
}
