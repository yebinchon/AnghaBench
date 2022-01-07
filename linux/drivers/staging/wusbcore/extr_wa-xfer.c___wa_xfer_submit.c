
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct wahc {int xfer_list_lock; int xfer_list; TYPE_1__* usb_iface; } ;
struct wa_xfer {unsigned int segs; int segs_submitted; struct wa_seg** seg; int list_node; TYPE_2__* ep; struct wahc* wa; } ;
struct wa_seg {int list_node; int status; } ;
struct TYPE_6__ {int wRequests; } ;
struct wa_rpipe {int wa; int seg_lock; TYPE_3__ descr; int segs_available; int seg_list; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct wa_rpipe* hcpriv; } ;
struct TYPE_4__ {struct device dev; } ;


 int BUG_ON (int) ;
 int WA_SEG_DELAYED ;
 int __wa_dto_put (int ) ;
 int __wa_dto_try_get (int ) ;
 int __wa_seg_submit (struct wa_rpipe*,struct wa_xfer*,struct wa_seg*,int*) ;
 int __wa_xfer_abort (struct wa_xfer*) ;
 size_t atomic_read (int *) ;
 int dev_dbg (struct device*,char*,struct wa_xfer*,int ,unsigned int,size_t,size_t) ;
 size_t le16_to_cpu (int ) ;
 int list_add_tail (int *,int *) ;
 size_t list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wa_add_delayed_rpipe (int ,struct wa_rpipe*) ;
 int wa_check_for_delayed_rpipes (int ) ;
 int wa_xfer_id (struct wa_xfer*) ;

__attribute__((used)) static int __wa_xfer_submit(struct wa_xfer *xfer)
{
 int result, dto_acquired = 0, dto_done = 0, dto_waiting = 0;
 struct wahc *wa = xfer->wa;
 struct device *dev = &wa->usb_iface->dev;
 unsigned cnt;
 struct wa_seg *seg;
 unsigned long flags;
 struct wa_rpipe *rpipe = xfer->ep->hcpriv;
 size_t maxrequests = le16_to_cpu(rpipe->descr.wRequests);
 u8 available;
 u8 empty;

 spin_lock_irqsave(&wa->xfer_list_lock, flags);
 list_add_tail(&xfer->list_node, &wa->xfer_list);
 spin_unlock_irqrestore(&wa->xfer_list_lock, flags);

 BUG_ON(atomic_read(&rpipe->segs_available) > maxrequests);
 result = 0;
 spin_lock_irqsave(&rpipe->seg_lock, flags);
 for (cnt = 0; cnt < xfer->segs; cnt++) {
  int delay_seg = 1;

  available = atomic_read(&rpipe->segs_available);
  empty = list_empty(&rpipe->seg_list);
  seg = xfer->seg[cnt];
  if (available && empty) {




   dto_acquired = __wa_dto_try_get(rpipe->wa);
   if (dto_acquired) {
    delay_seg = 0;
    result = __wa_seg_submit(rpipe, xfer, seg,
       &dto_done);
    dev_dbg(dev, "xfer %p ID 0x%08X#%u: available %u empty %u submitted\n",
     xfer, wa_xfer_id(xfer), cnt, available,
     empty);
    if (dto_done)
     __wa_dto_put(rpipe->wa);

    if (result < 0) {
     __wa_xfer_abort(xfer);
     goto error_seg_submit;
    }
   }
  }

  if (delay_seg) {
   dev_dbg(dev, "xfer %p ID 0x%08X#%u: available %u empty %u delayed\n",
    xfer, wa_xfer_id(xfer), cnt, available, empty);
   seg->status = WA_SEG_DELAYED;
   list_add_tail(&seg->list_node, &rpipe->seg_list);
  }
  xfer->segs_submitted++;
 }
error_seg_submit:




 if (!dto_acquired && !list_empty(&rpipe->seg_list)
  && (atomic_read(&rpipe->segs_available) ==
   le16_to_cpu(rpipe->descr.wRequests)))
  dto_waiting = 1;
 spin_unlock_irqrestore(&rpipe->seg_lock, flags);

 if (dto_waiting)
  wa_add_delayed_rpipe(rpipe->wa, rpipe);
 else if (dto_done)
  wa_check_for_delayed_rpipes(rpipe->wa);

 return result;
}
