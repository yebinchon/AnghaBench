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
struct usbctlx_completor {int (* complete ) (struct usbctlx_completor*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  type; } ;
struct hfa384x_usbctlx {int reapable; scalar_t__ state; int /*<<< orphan*/  list; TYPE_2__ outbuf; int /*<<< orphan*/  done; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  completing; } ;
struct hfa384x {int req_timer_done; int resp_timer_done; TYPE_3__ ctlxq; TYPE_1__* wlandev; int /*<<< orphan*/  ctlx_urb; int /*<<< orphan*/  resptimer; int /*<<< orphan*/  reqtimer; } ;
struct TYPE_4__ {int /*<<< orphan*/  netdev; scalar_t__ hwremoved; } ;

/* Variables and functions */
 scalar_t__ CTLX_COMPLETE ; 
 scalar_t__ CTLX_REQ_FAILED ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct hfa384x_usbctlx* FUNC2 (struct hfa384x*) ; 
 int /*<<< orphan*/  FUNC3 (struct hfa384x*) ; 
 int /*<<< orphan*/  FUNC4 (struct hfa384x_usbctlx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC11 (struct usbctlx_completor*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct hfa384x *hw,
					 struct hfa384x_usbctlx *ctlx,
					 struct usbctlx_completor *completor)
{
	unsigned long flags;
	int result;

	result = FUNC13(&ctlx->done);

	FUNC9(&hw->ctlxq.lock, flags);

	/*
	 * We can only handle the CTLX if the USB disconnect
	 * function has not run yet ...
	 */
cleanup:
	if (hw->wlandev->hwremoved) {
		FUNC10(&hw->ctlxq.lock, flags);
		result = -ENODEV;
	} else if (result != 0) {
		int runqueue = 0;

		/*
		 * We were probably interrupted, so delete
		 * this CTLX asynchronously, kill the timers
		 * and the URB, and then start the next
		 * pending CTLX.
		 *
		 * NOTE: We can only delete the timers and
		 *       the URB if this CTLX is active.
		 */
		if (ctlx == FUNC2(hw)) {
			FUNC10(&hw->ctlxq.lock, flags);

			FUNC1(&hw->reqtimer);
			FUNC1(&hw->resptimer);
			hw->req_timer_done = 1;
			hw->resp_timer_done = 1;
			FUNC12(&hw->ctlx_urb);

			FUNC9(&hw->ctlxq.lock, flags);

			runqueue = 1;

			/*
			 * This scenario is so unlikely that I'm
			 * happy with a grubby "goto" solution ...
			 */
			if (hw->wlandev->hwremoved)
				goto cleanup;
		}

		/*
		 * The completion task will send this CTLX
		 * to the reaper the next time it runs. We
		 * are no longer in a hurry.
		 */
		ctlx->reapable = 1;
		ctlx->state = CTLX_REQ_FAILED;
		FUNC7(&ctlx->list, &hw->ctlxq.completing);

		FUNC10(&hw->ctlxq.lock, flags);

		if (runqueue)
			FUNC3(hw);
	} else {
		if (ctlx->state == CTLX_COMPLETE) {
			result = completor->complete(completor);
		} else {
			FUNC8(hw->wlandev->netdev, "CTLX[%d] error: state(%s)\n",
				    FUNC5(ctlx->outbuf.type),
				    FUNC0(ctlx->state));
			result = -EIO;
		}

		FUNC6(&ctlx->list);
		FUNC10(&hw->ctlxq.lock, flags);
		FUNC4(ctlx);
	}

	return result;
}