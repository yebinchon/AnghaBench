#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct urb {int /*<<< orphan*/  status; struct hfa384x* context; } ;
struct TYPE_6__ {int /*<<< orphan*/  type; } ;
struct hfa384x_usbctlx {int state; TYPE_1__ outbuf; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  active; } ;
struct hfa384x {int req_timer_done; int resp_timer_done; TYPE_3__ ctlxq; int /*<<< orphan*/  resptimer; int /*<<< orphan*/  usb_work; TYPE_2__* wlandev; int /*<<< orphan*/  usb_flags; int /*<<< orphan*/  reqtimer; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {TYPE_4__* netdev; } ;

/* Variables and functions */
 int CTLX_COMPLETE ; 
 int CTLX_REQ_COMPLETE ; 
 int CTLX_REQ_FAILED ; 
#define  CTLX_REQ_SUBMITTED 129 
#define  CTLX_RESP_COMPLETE 128 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  EPIPE ; 
 int /*<<< orphan*/  ESHUTDOWN ; 
 int /*<<< orphan*/  WORK_TX_HALT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct urb*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct hfa384x_usbctlx* FUNC3 (struct hfa384x*) ; 
 int /*<<< orphan*/  FUNC4 (struct hfa384x*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct hfa384x*,struct hfa384x_usbctlx*) ; 

__attribute__((used)) static void FUNC15(struct urb *urb)
{
	struct hfa384x *hw = urb->context;
	int delete_resptimer = 0;
	int timer_ok = 1;
	int run_queue = 0;
	struct hfa384x_usbctlx *ctlx;
	unsigned long flags;

	FUNC9("urb->status=%d\n", urb->status);
#ifdef DEBUG_USB
	dbprint_urb(urb);
#endif
	if ((urb->status == -ESHUTDOWN) ||
	    (urb->status == -ENODEV) || !hw)
		return;

retry:
	FUNC11(&hw->ctlxq.lock, flags);

	/*
	 * Only one CTLX at a time on the "active" list, and
	 * none at all if we are unplugged. However, we can
	 * rely on the disconnect function to clean everything
	 * up if someone unplugged the adapter.
	 */
	if (FUNC6(&hw->ctlxq.active)) {
		FUNC12(&hw->ctlxq.lock, flags);
		return;
	}

	/*
	 * Having something on the "active" queue means
	 * that we have timers to worry about ...
	 */
	if (FUNC2(&hw->reqtimer) == 0) {
		if (hw->req_timer_done == 0) {
			/*
			 * This timer was actually running while we
			 * were trying to delete it. Let it terminate
			 * gracefully instead.
			 */
			FUNC12(&hw->ctlxq.lock, flags);
			goto retry;
		}
	} else {
		hw->req_timer_done = 1;
	}

	ctlx = FUNC3(hw);

	if (urb->status == 0) {
		/* Request portion of a CTLX is successful */
		switch (ctlx->state) {
		case CTLX_REQ_SUBMITTED:
			/* This OUT-ACK received before IN */
			ctlx->state = CTLX_REQ_COMPLETE;
			break;

		case CTLX_RESP_COMPLETE:
			/* IN already received before this OUT-ACK,
			 * so this command must now be complete.
			 */
			ctlx->state = CTLX_COMPLETE;
			FUNC14(hw, ctlx);
			run_queue = 1;
			break;

		default:
			/* This is NOT a valid CTLX "success" state! */
			FUNC7(hw->wlandev->netdev,
				   "Illegal CTLX[%d] success state(%s, %d) in OUT URB\n",
				   FUNC5(ctlx->outbuf.type),
				   FUNC0(ctlx->state), urb->status);
			break;
		}		/* switch */
	} else {
		/* If the pipe has stalled then we need to reset it */
		if ((urb->status == -EPIPE) &&
		    !FUNC13(WORK_TX_HALT, &hw->usb_flags)) {
			FUNC8(hw->wlandev->netdev,
				    "%s tx pipe stalled: requesting reset\n",
				    hw->wlandev->netdev->name);
			FUNC10(&hw->usb_work);
		}

		/* If someone cancels the OUT URB then its status
		 * should be either -ECONNRESET or -ENOENT.
		 */
		ctlx->state = CTLX_REQ_FAILED;
		FUNC14(hw, ctlx);
		delete_resptimer = 1;
		run_queue = 1;
	}

delresp:
	if (delete_resptimer) {
		timer_ok = FUNC2(&hw->resptimer);
		if (timer_ok != 0)
			hw->resp_timer_done = 1;
	}

	FUNC12(&hw->ctlxq.lock, flags);

	if (!timer_ok && (hw->resp_timer_done == 0)) {
		FUNC11(&hw->ctlxq.lock, flags);
		goto delresp;
	}

	if (run_queue)
		FUNC4(hw);
}