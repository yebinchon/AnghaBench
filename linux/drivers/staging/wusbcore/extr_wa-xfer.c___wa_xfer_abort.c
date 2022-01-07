
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int bLength; int dwTransferID; int wRPipe; int bRequestType; } ;
struct wa_xfer_abort_buffer {int urb; TYPE_7__ cmd; int wa; } ;
struct wa_xfer {TYPE_5__* wa; TYPE_2__* ep; } ;
struct TYPE_10__ {int wRPipeIndex; } ;
struct wa_rpipe {TYPE_3__ descr; } ;
struct device {int dummy; } ;
struct TYPE_12__ {TYPE_4__* dto_epd; int usb_dev; TYPE_1__* usb_iface; } ;
struct TYPE_11__ {int bEndpointAddress; } ;
struct TYPE_9__ {struct wa_rpipe* hcpriv; } ;
struct TYPE_8__ {struct device dev; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int WA_XFER_ABORT ;
 int __wa_xfer_abort_cb ;
 int dev_err (struct device*,char*,struct wa_xfer*,int) ;
 int kfree (struct wa_xfer_abort_buffer*) ;
 struct wa_xfer_abort_buffer* kmalloc (int,int ) ;
 scalar_t__ printk_ratelimit () ;
 int usb_fill_bulk_urb (int *,int ,int ,TYPE_7__*,int,int ,struct wa_xfer_abort_buffer*) ;
 int usb_init_urb (int *) ;
 int usb_sndbulkpipe (int ,int ) ;
 int usb_submit_urb (int *,int ) ;
 int wa_get (TYPE_5__*) ;
 int wa_put (TYPE_5__*) ;
 int wa_xfer_id_le32 (struct wa_xfer*) ;

__attribute__((used)) static int __wa_xfer_abort(struct wa_xfer *xfer)
{
 int result = -ENOMEM;
 struct device *dev = &xfer->wa->usb_iface->dev;
 struct wa_xfer_abort_buffer *b;
 struct wa_rpipe *rpipe = xfer->ep->hcpriv;

 b = kmalloc(sizeof(*b), GFP_ATOMIC);
 if (b == ((void*)0))
  goto error_kmalloc;
 b->cmd.bLength = sizeof(b->cmd);
 b->cmd.bRequestType = WA_XFER_ABORT;
 b->cmd.wRPipe = rpipe->descr.wRPipeIndex;
 b->cmd.dwTransferID = wa_xfer_id_le32(xfer);
 b->wa = wa_get(xfer->wa);

 usb_init_urb(&b->urb);
 usb_fill_bulk_urb(&b->urb, xfer->wa->usb_dev,
  usb_sndbulkpipe(xfer->wa->usb_dev,
    xfer->wa->dto_epd->bEndpointAddress),
  &b->cmd, sizeof(b->cmd), __wa_xfer_abort_cb, b);
 result = usb_submit_urb(&b->urb, GFP_ATOMIC);
 if (result < 0)
  goto error_submit;
 return result;


error_submit:
 wa_put(xfer->wa);
 if (printk_ratelimit())
  dev_err(dev, "xfer %p: Can't submit abort request: %d\n",
   xfer, result);
 kfree(b);
error_kmalloc:
 return result;

}
