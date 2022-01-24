#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct wahc {unsigned int dti_isoc_xfer_seg; int /*<<< orphan*/  dti_edc; int /*<<< orphan*/  xfer_error_work; int /*<<< orphan*/  xfer_list_lock; int /*<<< orphan*/  xfer_errored_list; int /*<<< orphan*/  active_buf_in_urbs; int /*<<< orphan*/  dti_state; int /*<<< orphan*/  dti_isoc_xfer_in_progress; struct urb* buf_in_urbs; TYPE_1__* usb_iface; } ;
struct wa_xfer_result {int bTransferSegment; int bTransferStatus; int /*<<< orphan*/  dwNumOfPackets; int /*<<< orphan*/  dwTransferLength; } ;
struct wa_xfer {unsigned int segs; int /*<<< orphan*/  lock; TYPE_3__* urb; int /*<<< orphan*/  list_node; TYPE_2__* ep; int /*<<< orphan*/  segs_done; scalar_t__ is_inbound; int /*<<< orphan*/  id; struct wa_seg** seg; } ;
struct wa_seg {scalar_t__ status; unsigned int result; scalar_t__ index; } ;
struct wa_rpipe {int dummy; } ;
struct urb {int /*<<< orphan*/ * sg; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  pipe; } ;
struct TYPE_5__ {int /*<<< orphan*/  desc; struct wa_rpipe* hcpriv; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDC_ERROR_TIMEFRAME ; 
 int /*<<< orphan*/  EDC_MAX_ERRORS ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  WA_DTI_ISOC_PACKET_STATUS_PENDING ; 
 scalar_t__ WA_SEG_ABORTED ; 
 scalar_t__ WA_SEG_DONE ; 
 scalar_t__ WA_SEG_DTI_PENDING ; 
 scalar_t__ WA_SEG_ERROR ; 
 scalar_t__ WA_SEG_PENDING ; 
 scalar_t__ WA_SEG_SUBMITTED ; 
 int WA_XFER_STATUS_ABORTED ; 
 int WA_XFER_STATUS_HALTED ; 
 int /*<<< orphan*/  FUNC0 (struct wa_xfer*) ; 
 unsigned int FUNC1 (struct wa_xfer*) ; 
 unsigned int FUNC2 (struct wa_xfer*,struct wa_seg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,struct wa_xfer*,int /*<<< orphan*/ ,unsigned int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC12 (struct wa_rpipe*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC17 (int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct wa_xfer*,scalar_t__,scalar_t__) ; 
 int FUNC22 (struct urb*,struct wa_xfer*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC23 (struct wahc*) ; 
 int /*<<< orphan*/  FUNC24 (struct wahc*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct wa_xfer*) ; 
 int /*<<< orphan*/  FUNC26 (struct wa_rpipe*) ; 
 int /*<<< orphan*/  FUNC27 (struct wa_xfer*) ; 
 unsigned int FUNC28 (int) ; 
 int /*<<< orphan*/  wusbd ; 

__attribute__((used)) static void FUNC29(struct wahc *wa, struct wa_xfer *xfer,
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
	unsigned bytes_transferred = FUNC8(xfer_result->dwTransferLength);
	struct urb *buf_in_urb = &(wa->buf_in_urbs[0]);

	FUNC14(&xfer->lock, flags);
	seg_idx = xfer_result->bTransferSegment & 0x7f;
	if (FUNC17(seg_idx >= xfer->segs))
		goto error_bad_seg;
	seg = xfer->seg[seg_idx];
	rpipe = xfer->ep->hcpriv;
	usb_status = xfer_result->bTransferStatus;
	FUNC3(dev, "xfer %p ID 0x%08X#%u: bTransferStatus 0x%02x (seg status %u)\n",
		xfer, FUNC27(xfer), seg_idx, usb_status, seg->status);
	if (seg->status == WA_SEG_ABORTED
	    || seg->status == WA_SEG_ERROR)	/* already handled */
		goto segment_aborted;
	if (seg->status == WA_SEG_SUBMITTED)	/* ops, got here */
		seg->status = WA_SEG_PENDING;	/* before wa_seg{_dto}_cb() */
	if (seg->status != WA_SEG_PENDING) {
		if (FUNC10())
			FUNC4(dev, "xfer %p#%u: Bad segment state %u\n",
				xfer, seg_idx, seg->status);
		seg->status = WA_SEG_PENDING;	/* workaround/"fix" it */
	}
	if (usb_status & 0x80) {
		seg->result = FUNC28(usb_status);
		FUNC4(dev, "DTI: xfer %p 0x%08X:#%u failed (0x%02x)\n",
			xfer, xfer->id, seg->index, usb_status);
		seg->status = ((usb_status & 0x7F) == WA_XFER_STATUS_ABORTED) ?
			WA_SEG_ABORTED : WA_SEG_ERROR;
		goto error_complete;
	}
	/* FIXME: we ignore warnings, tally them for stats */
	if (usb_status & 0x40) 		/* Warning?... */
		usb_status = 0;		/* ... pass */
	/*
	 * If the last segment bit is set, complete the remaining segments.
	 * When the current segment is completed, either in wa_buf_in_cb for
	 * transfers with data or below for no data, the xfer will complete.
	 */
	if (xfer_result->bTransferSegment & 0x80)
		FUNC21(xfer, seg->index + 1,
			WA_SEG_DONE);
	if (FUNC19(xfer->urb->pipe)
		&& (FUNC8(xfer_result->dwNumOfPackets) > 0)) {
		/* set up WA state to read the isoc packet status next. */
		wa->dti_isoc_xfer_in_progress = FUNC27(xfer);
		wa->dti_isoc_xfer_seg = seg_idx;
		wa->dti_state = WA_DTI_ISOC_PACKET_STATUS_PENDING;
	} else if (xfer->is_inbound && !FUNC19(xfer->urb->pipe)
			&& (bytes_transferred > 0)) {
		/* IN data phase: read to buffer */
		seg->status = WA_SEG_DTI_PENDING;
		result = FUNC22(buf_in_urb, xfer, seg_idx,
			bytes_transferred);
		if (result < 0)
			goto error_buf_in_populate;
		++(wa->active_buf_in_urbs);
		result = FUNC20(buf_in_urb, GFP_ATOMIC);
		if (result < 0) {
			--(wa->active_buf_in_urbs);
			goto error_submit_buf_in;
		}
	} else {
		/* OUT data phase or no data, complete it -- */
		seg->result = bytes_transferred;
		rpipe_ready = FUNC12(rpipe);
		done = FUNC2(xfer, seg, WA_SEG_DONE);
	}
	FUNC16(&xfer->lock, flags);
	if (done)
		FUNC25(xfer);
	if (rpipe_ready)
		FUNC26(rpipe);
	return;

error_submit_buf_in:
	if (FUNC6(&wa->dti_edc, EDC_MAX_ERRORS, EDC_ERROR_TIMEFRAME)) {
		FUNC4(dev, "DTI: URB max acceptable errors "
			"exceeded, resetting device\n");
		FUNC23(wa);
	}
	if (FUNC10())
		FUNC4(dev, "xfer %p#%u: can't submit DTI data phase: %d\n",
			xfer, seg_idx, result);
	seg->result = result;
	FUNC7(buf_in_urb->sg);
	buf_in_urb->sg = NULL;
error_buf_in_populate:
	FUNC0(xfer);
	seg->status = WA_SEG_ERROR;
error_complete:
	xfer->segs_done++;
	rpipe_ready = FUNC12(rpipe);
	FUNC21(xfer, seg->index + 1, seg->status);
	done = FUNC1(xfer);
	/*
	 * queue work item to clear STALL for control endpoints.
	 * Otherwise, let endpoint_reset take care of it.
	 */
	if (((usb_status & 0x3f) == WA_XFER_STATUS_HALTED) &&
		FUNC18(&xfer->ep->desc) &&
		done) {

		FUNC5(dev, "Control EP stall.  Queue delayed work.\n");
		FUNC13(&wa->xfer_list_lock);
		/* move xfer from xfer_list to xfer_errored_list. */
		FUNC9(&xfer->list_node, &wa->xfer_errored_list);
		FUNC15(&wa->xfer_list_lock);
		FUNC16(&xfer->lock, flags);
		FUNC11(wusbd, &wa->xfer_error_work);
	} else {
		FUNC16(&xfer->lock, flags);
		if (done)
			FUNC25(xfer);
		if (rpipe_ready)
			FUNC26(rpipe);
	}

	return;

error_bad_seg:
	FUNC16(&xfer->lock, flags);
	FUNC24(wa, xfer->urb, -ENOENT);
	if (FUNC10())
		FUNC4(dev, "xfer %p#%u: bad segment\n", xfer, seg_idx);
	if (FUNC6(&wa->dti_edc, EDC_MAX_ERRORS, EDC_ERROR_TIMEFRAME)) {
		FUNC4(dev, "DTI: URB max acceptable errors "
			"exceeded, resetting device\n");
		FUNC23(wa);
	}
	return;

segment_aborted:
	/* nothing to do, as the aborter did the completion */
	FUNC16(&xfer->lock, flags);
}