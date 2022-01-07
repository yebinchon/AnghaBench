
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wahc {unsigned int dti_isoc_xfer_seg; int dti_edc; int xfer_error_work; int xfer_list_lock; int xfer_errored_list; int active_buf_in_urbs; int dti_state; int dti_isoc_xfer_in_progress; struct urb* buf_in_urbs; TYPE_1__* usb_iface; } ;
struct wa_xfer_result {int bTransferSegment; int bTransferStatus; int dwNumOfPackets; int dwTransferLength; } ;
struct wa_xfer {unsigned int segs; int lock; TYPE_3__* urb; int list_node; TYPE_2__* ep; int segs_done; scalar_t__ is_inbound; int id; struct wa_seg** seg; } ;
struct wa_seg {scalar_t__ status; unsigned int result; scalar_t__ index; } ;
struct wa_rpipe {int dummy; } ;
struct urb {int * sg; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int pipe; } ;
struct TYPE_5__ {int desc; struct wa_rpipe* hcpriv; } ;
struct TYPE_4__ {struct device dev; } ;


 int EDC_ERROR_TIMEFRAME ;
 int EDC_MAX_ERRORS ;
 int ENOENT ;
 int GFP_ATOMIC ;
 int WA_DTI_ISOC_PACKET_STATUS_PENDING ;
 scalar_t__ WA_SEG_ABORTED ;
 scalar_t__ WA_SEG_DONE ;
 scalar_t__ WA_SEG_DTI_PENDING ;
 scalar_t__ WA_SEG_ERROR ;
 scalar_t__ WA_SEG_PENDING ;
 scalar_t__ WA_SEG_SUBMITTED ;
 int WA_XFER_STATUS_ABORTED ;
 int WA_XFER_STATUS_HALTED ;
 int __wa_xfer_abort (struct wa_xfer*) ;
 unsigned int __wa_xfer_is_done (struct wa_xfer*) ;
 unsigned int __wa_xfer_mark_seg_as_done (struct wa_xfer*,struct wa_seg*,scalar_t__) ;
 int dev_dbg (struct device*,char*,struct wa_xfer*,int ,unsigned int,int,scalar_t__) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*) ;
 scalar_t__ edc_inc (int *,int ,int ) ;
 int kfree (int *) ;
 unsigned int le32_to_cpu (int ) ;
 int list_move_tail (int *,int *) ;
 scalar_t__ printk_ratelimit () ;
 int queue_work (int ,int *) ;
 unsigned int rpipe_avail_inc (struct wa_rpipe*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ usb_endpoint_xfer_control (int *) ;
 scalar_t__ usb_pipeisoc (int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int wa_complete_remaining_xfer_segs (struct wa_xfer*,scalar_t__,scalar_t__) ;
 int wa_populate_buf_in_urb (struct urb*,struct wa_xfer*,unsigned int,unsigned int) ;
 int wa_reset_all (struct wahc*) ;
 int wa_urb_dequeue (struct wahc*,TYPE_3__*,int ) ;
 int wa_xfer_completion (struct wa_xfer*) ;
 int wa_xfer_delayed_run (struct wa_rpipe*) ;
 int wa_xfer_id (struct wa_xfer*) ;
 unsigned int wa_xfer_status_to_errno (int) ;
 int wusbd ;

__attribute__((used)) static void wa_xfer_result_chew(struct wahc *wa, struct wa_xfer *xfer,
  struct wa_xfer_result *xfer_result)
{
 int result;
 struct device *dev = &wa->usb_iface->dev;
 unsigned long flags;
 unsigned int seg_idx;
 struct wa_seg *seg;
 struct wa_rpipe *rpipe;
 unsigned done = 0;
 u8 usb_status;
 unsigned rpipe_ready = 0;
 unsigned bytes_transferred = le32_to_cpu(xfer_result->dwTransferLength);
 struct urb *buf_in_urb = &(wa->buf_in_urbs[0]);

 spin_lock_irqsave(&xfer->lock, flags);
 seg_idx = xfer_result->bTransferSegment & 0x7f;
 if (unlikely(seg_idx >= xfer->segs))
  goto error_bad_seg;
 seg = xfer->seg[seg_idx];
 rpipe = xfer->ep->hcpriv;
 usb_status = xfer_result->bTransferStatus;
 dev_dbg(dev, "xfer %p ID 0x%08X#%u: bTransferStatus 0x%02x (seg status %u)\n",
  xfer, wa_xfer_id(xfer), seg_idx, usb_status, seg->status);
 if (seg->status == WA_SEG_ABORTED
     || seg->status == WA_SEG_ERROR)
  goto segment_aborted;
 if (seg->status == WA_SEG_SUBMITTED)
  seg->status = WA_SEG_PENDING;
 if (seg->status != WA_SEG_PENDING) {
  if (printk_ratelimit())
   dev_err(dev, "xfer %p#%u: Bad segment state %u\n",
    xfer, seg_idx, seg->status);
  seg->status = WA_SEG_PENDING;
 }
 if (usb_status & 0x80) {
  seg->result = wa_xfer_status_to_errno(usb_status);
  dev_err(dev, "DTI: xfer %p 0x%08X:#%u failed (0x%02x)\n",
   xfer, xfer->id, seg->index, usb_status);
  seg->status = ((usb_status & 0x7F) == WA_XFER_STATUS_ABORTED) ?
   WA_SEG_ABORTED : WA_SEG_ERROR;
  goto error_complete;
 }

 if (usb_status & 0x40)
  usb_status = 0;





 if (xfer_result->bTransferSegment & 0x80)
  wa_complete_remaining_xfer_segs(xfer, seg->index + 1,
   WA_SEG_DONE);
 if (usb_pipeisoc(xfer->urb->pipe)
  && (le32_to_cpu(xfer_result->dwNumOfPackets) > 0)) {

  wa->dti_isoc_xfer_in_progress = wa_xfer_id(xfer);
  wa->dti_isoc_xfer_seg = seg_idx;
  wa->dti_state = WA_DTI_ISOC_PACKET_STATUS_PENDING;
 } else if (xfer->is_inbound && !usb_pipeisoc(xfer->urb->pipe)
   && (bytes_transferred > 0)) {

  seg->status = WA_SEG_DTI_PENDING;
  result = wa_populate_buf_in_urb(buf_in_urb, xfer, seg_idx,
   bytes_transferred);
  if (result < 0)
   goto error_buf_in_populate;
  ++(wa->active_buf_in_urbs);
  result = usb_submit_urb(buf_in_urb, GFP_ATOMIC);
  if (result < 0) {
   --(wa->active_buf_in_urbs);
   goto error_submit_buf_in;
  }
 } else {

  seg->result = bytes_transferred;
  rpipe_ready = rpipe_avail_inc(rpipe);
  done = __wa_xfer_mark_seg_as_done(xfer, seg, WA_SEG_DONE);
 }
 spin_unlock_irqrestore(&xfer->lock, flags);
 if (done)
  wa_xfer_completion(xfer);
 if (rpipe_ready)
  wa_xfer_delayed_run(rpipe);
 return;

error_submit_buf_in:
 if (edc_inc(&wa->dti_edc, EDC_MAX_ERRORS, EDC_ERROR_TIMEFRAME)) {
  dev_err(dev, "DTI: URB max acceptable errors "
   "exceeded, resetting device\n");
  wa_reset_all(wa);
 }
 if (printk_ratelimit())
  dev_err(dev, "xfer %p#%u: can't submit DTI data phase: %d\n",
   xfer, seg_idx, result);
 seg->result = result;
 kfree(buf_in_urb->sg);
 buf_in_urb->sg = ((void*)0);
error_buf_in_populate:
 __wa_xfer_abort(xfer);
 seg->status = WA_SEG_ERROR;
error_complete:
 xfer->segs_done++;
 rpipe_ready = rpipe_avail_inc(rpipe);
 wa_complete_remaining_xfer_segs(xfer, seg->index + 1, seg->status);
 done = __wa_xfer_is_done(xfer);




 if (((usb_status & 0x3f) == WA_XFER_STATUS_HALTED) &&
  usb_endpoint_xfer_control(&xfer->ep->desc) &&
  done) {

  dev_info(dev, "Control EP stall.  Queue delayed work.\n");
  spin_lock(&wa->xfer_list_lock);

  list_move_tail(&xfer->list_node, &wa->xfer_errored_list);
  spin_unlock(&wa->xfer_list_lock);
  spin_unlock_irqrestore(&xfer->lock, flags);
  queue_work(wusbd, &wa->xfer_error_work);
 } else {
  spin_unlock_irqrestore(&xfer->lock, flags);
  if (done)
   wa_xfer_completion(xfer);
  if (rpipe_ready)
   wa_xfer_delayed_run(rpipe);
 }

 return;

error_bad_seg:
 spin_unlock_irqrestore(&xfer->lock, flags);
 wa_urb_dequeue(wa, xfer->urb, -ENOENT);
 if (printk_ratelimit())
  dev_err(dev, "xfer %p#%u: bad segment\n", xfer, seg_idx);
 if (edc_inc(&wa->dti_edc, EDC_MAX_ERRORS, EDC_ERROR_TIMEFRAME)) {
  dev_err(dev, "DTI: URB max acceptable errors "
   "exceeded, resetting device\n");
  wa_reset_all(wa);
 }
 return;

segment_aborted:

 spin_unlock_irqrestore(&xfer->lock, flags);
}
