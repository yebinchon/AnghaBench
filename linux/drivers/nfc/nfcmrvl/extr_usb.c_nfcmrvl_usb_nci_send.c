
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct urb {int setup_packet; } ;
struct sk_buff {int len; int data; } ;
struct nfcmrvl_usb_drv_data {TYPE_2__* udev; int tx_anchor; int waker; int deferred; TYPE_1__* bulk_tx_ep; } ;
struct nfcmrvl_private {struct nfcmrvl_usb_drv_data* drv_data; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int bEndpointAddress; } ;


 int ENODEV ;
 int ENOMEM ;
 int EPERM ;
 int GFP_ATOMIC ;
 int kfree (int ) ;
 int nfc_err (int *,char*,struct urb*,int) ;
 int nfcmrvl_inc_tx (struct nfcmrvl_usb_drv_data*) ;
 int nfcmrvl_tx_complete ;
 int schedule_work (int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,TYPE_2__*,unsigned int,int ,int ,int ,struct sk_buff*) ;
 int usb_free_urb (struct urb*) ;
 int usb_mark_last_busy (TYPE_2__*) ;
 unsigned int usb_sndbulkpipe (TYPE_2__*,int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static int nfcmrvl_usb_nci_send(struct nfcmrvl_private *priv,
    struct sk_buff *skb)
{
 struct nfcmrvl_usb_drv_data *drv_data = priv->drv_data;
 struct urb *urb;
 unsigned int pipe;
 int err;

 if (!drv_data->bulk_tx_ep)
  return -ENODEV;

 urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!urb)
  return -ENOMEM;

 pipe = usb_sndbulkpipe(drv_data->udev,
    drv_data->bulk_tx_ep->bEndpointAddress);

 usb_fill_bulk_urb(urb, drv_data->udev, pipe, skb->data, skb->len,
     nfcmrvl_tx_complete, skb);

 err = nfcmrvl_inc_tx(drv_data);
 if (err) {
  usb_anchor_urb(urb, &drv_data->deferred);
  schedule_work(&drv_data->waker);
  err = 0;
  goto done;
 }

 usb_anchor_urb(urb, &drv_data->tx_anchor);

 err = usb_submit_urb(urb, GFP_ATOMIC);
 if (err) {
  if (err != -EPERM && err != -ENODEV)
   nfc_err(&drv_data->udev->dev,
    "urb %p submission failed (%d)\n", urb, -err);
  kfree(urb->setup_packet);
  usb_unanchor_urb(urb);
 } else {
  usb_mark_last_busy(drv_data->udev);
 }

done:
 usb_free_urb(urb);
 return err;
}
