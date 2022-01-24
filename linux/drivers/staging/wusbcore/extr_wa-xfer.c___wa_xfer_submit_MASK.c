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
typedef  size_t u8 ;
struct wahc {int /*<<< orphan*/  xfer_list_lock; int /*<<< orphan*/  xfer_list; TYPE_1__* usb_iface; } ;
struct wa_xfer {unsigned int segs; int /*<<< orphan*/  segs_submitted; struct wa_seg** seg; int /*<<< orphan*/  list_node; TYPE_2__* ep; struct wahc* wa; } ;
struct wa_seg {int /*<<< orphan*/  list_node; int /*<<< orphan*/  status; } ;
struct TYPE_6__ {int /*<<< orphan*/  wRequests; } ;
struct wa_rpipe {int /*<<< orphan*/  wa; int /*<<< orphan*/  seg_lock; TYPE_3__ descr; int /*<<< orphan*/  segs_available; int /*<<< orphan*/  seg_list; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct wa_rpipe* hcpriv; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WA_SEG_DELAYED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wa_rpipe*,struct wa_xfer*,struct wa_seg*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct wa_xfer*) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,struct wa_xfer*,int /*<<< orphan*/ ,unsigned int,size_t,size_t) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct wa_rpipe*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct wa_xfer*) ; 

__attribute__((used)) static int FUNC15(struct wa_xfer *xfer)
{
	int result, dto_acquired = 0, dto_done = 0, dto_waiting = 0;
	struct wahc *wa = xfer->wa;
	struct device *dev = &wa->usb_iface->dev;
	unsigned cnt;
	struct wa_seg *seg;
	unsigned long flags;
	struct wa_rpipe *rpipe = xfer->ep->hcpriv;
	size_t maxrequests = FUNC7(rpipe->descr.wRequests);
	u8 available;
	u8 empty;

	FUNC10(&wa->xfer_list_lock, flags);
	FUNC8(&xfer->list_node, &wa->xfer_list);
	FUNC11(&wa->xfer_list_lock, flags);

	FUNC0(FUNC5(&rpipe->segs_available) > maxrequests);
	result = 0;
	FUNC10(&rpipe->seg_lock, flags);
	for (cnt = 0; cnt < xfer->segs; cnt++) {
		int delay_seg = 1;

		available = FUNC5(&rpipe->segs_available);
		empty = FUNC9(&rpipe->seg_list);
		seg = xfer->seg[cnt];
		if (available && empty) {
			/*
			 * Only attempt to acquire DTO if we have a segment
			 * to send.
			 */
			dto_acquired = FUNC2(rpipe->wa);
			if (dto_acquired) {
				delay_seg = 0;
				result = FUNC3(rpipe, xfer, seg,
							&dto_done);
				FUNC6(dev, "xfer %p ID 0x%08X#%u: available %u empty %u submitted\n",
					xfer, FUNC14(xfer), cnt, available,
					empty);
				if (dto_done)
					FUNC1(rpipe->wa);

				if (result < 0) {
					FUNC4(xfer);
					goto error_seg_submit;
				}
			}
		}

		if (delay_seg) {
			FUNC6(dev, "xfer %p ID 0x%08X#%u: available %u empty %u delayed\n",
				xfer, FUNC14(xfer), cnt, available,  empty);
			seg->status = WA_SEG_DELAYED;
			FUNC8(&seg->list_node, &rpipe->seg_list);
		}
		xfer->segs_submitted++;
	}
error_seg_submit:
	/*
	 * Mark this RPIPE as waiting if dto was not acquired, there are
	 * delayed segs and no active transfers to wake us up later.
	 */
	if (!dto_acquired && !FUNC9(&rpipe->seg_list)
		&& (FUNC5(&rpipe->segs_available) ==
			FUNC7(rpipe->descr.wRequests)))
		dto_waiting = 1;
	FUNC11(&rpipe->seg_lock, flags);

	if (dto_waiting)
		FUNC12(rpipe->wa, rpipe);
	else if (dto_done)
		FUNC13(rpipe->wa);

	return result;
}