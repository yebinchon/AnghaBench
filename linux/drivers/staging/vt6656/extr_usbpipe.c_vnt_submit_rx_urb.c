
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vnt_rcb {int in_use; int skb; struct urb* urb; } ;
struct vnt_private {TYPE_1__* usb; } ;
struct urb {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int GFP_ATOMIC ;
 int MAX_TOTAL_SIZE_WITH_ALL_HEADERS ;
 int dev_dbg (int *,char*,...) ;
 int skb_put (int ,int ) ;
 int skb_tailroom (int ) ;
 int usb_fill_bulk_urb (struct urb*,TYPE_1__*,int ,int ,int ,int ,struct vnt_rcb*) ;
 int usb_rcvbulkpipe (TYPE_1__*,int) ;
 int usb_submit_urb (struct urb*,int ) ;
 int vnt_submit_rx_urb_complete ;

int vnt_submit_rx_urb(struct vnt_private *priv, struct vnt_rcb *rcb)
{
 int ret = 0;
 struct urb *urb = rcb->urb;

 if (!rcb->skb) {
  dev_dbg(&priv->usb->dev, "rcb->skb is null\n");
  ret = -EINVAL;
  goto end;
 }

 usb_fill_bulk_urb(urb,
     priv->usb,
     usb_rcvbulkpipe(priv->usb, 2),
     skb_put(rcb->skb, skb_tailroom(rcb->skb)),
     MAX_TOTAL_SIZE_WITH_ALL_HEADERS,
     vnt_submit_rx_urb_complete,
     rcb);

 ret = usb_submit_urb(urb, GFP_ATOMIC);
 if (ret) {
  dev_dbg(&priv->usb->dev, "Submit Rx URB failed %d\n", ret);
  goto end;
 }

 rcb->in_use = 1;

end:
 return ret;
}
