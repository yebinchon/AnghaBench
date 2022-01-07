
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vnt_usb_send_context {int in_use; int buf_len; int data; struct urb* urb; } ;
struct vnt_private {TYPE_1__* usb; int flags; } ;
struct urb {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 int DEVICE_FLAGS_DISCONNECTED ;
 int GFP_ATOMIC ;
 int STATUS_FAILURE ;
 int STATUS_PENDING ;
 int STATUS_RESOURCES ;
 int dev_dbg (int *,char*,int) ;
 scalar_t__ test_bit (int ,int *) ;
 int usb_fill_bulk_urb (struct urb*,TYPE_1__*,int ,int ,int ,int ,struct vnt_usb_send_context*) ;
 int usb_sndbulkpipe (TYPE_1__*,int) ;
 int usb_submit_urb (struct urb*,int ) ;
 int vnt_tx_context_complete ;

int vnt_tx_context(struct vnt_private *priv,
     struct vnt_usb_send_context *context)
{
 int status;
 struct urb *urb = context->urb;

 if (test_bit(DEVICE_FLAGS_DISCONNECTED, &priv->flags)) {
  context->in_use = 0;
  return STATUS_RESOURCES;
 }

 usb_fill_bulk_urb(urb,
     priv->usb,
     usb_sndbulkpipe(priv->usb, 3),
     context->data,
     context->buf_len,
     vnt_tx_context_complete,
     context);

 status = usb_submit_urb(urb, GFP_ATOMIC);
 if (status) {
  dev_dbg(&priv->usb->dev, "Submit Tx URB failed %d\n", status);

  context->in_use = 0;
  return STATUS_FAILURE;
 }

 return STATUS_PENDING;
}
