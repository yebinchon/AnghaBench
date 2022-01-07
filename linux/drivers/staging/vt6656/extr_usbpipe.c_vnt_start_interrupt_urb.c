
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int in_use; int data_buf; } ;
struct vnt_private {TYPE_1__ int_buf; TYPE_2__* usb; int interrupt_urb; int int_interval; } ;
struct TYPE_5__ {int dev; } ;


 int EBUSY ;
 int GFP_ATOMIC ;
 int MAX_INTERRUPT_SIZE ;
 int dev_dbg (int *,char*,int) ;
 int usb_fill_int_urb (int ,TYPE_2__*,int ,int ,int ,int ,struct vnt_private*,int ) ;
 int usb_rcvintpipe (TYPE_2__*,int) ;
 int usb_submit_urb (int ,int ) ;
 int vnt_start_interrupt_urb_complete ;

int vnt_start_interrupt_urb(struct vnt_private *priv)
{
 int ret = 0;

 if (priv->int_buf.in_use) {
  ret = -EBUSY;
  goto err;
 }

 priv->int_buf.in_use = 1;

 usb_fill_int_urb(priv->interrupt_urb,
    priv->usb,
    usb_rcvintpipe(priv->usb, 1),
    priv->int_buf.data_buf,
    MAX_INTERRUPT_SIZE,
    vnt_start_interrupt_urb_complete,
    priv,
    priv->int_interval);

 ret = usb_submit_urb(priv->interrupt_urb, GFP_ATOMIC);
 if (ret) {
  dev_dbg(&priv->usb->dev, "Submit int URB failed %d\n", ret);
  goto err_submit;
 }

 return 0;

err_submit:
 priv->int_buf.in_use = 0;
err:
 return ret;
}
