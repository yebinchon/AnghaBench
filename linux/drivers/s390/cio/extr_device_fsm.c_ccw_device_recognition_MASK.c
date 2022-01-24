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
typedef  int /*<<< orphan*/  u32 ;
struct subchannel {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_3__* private; TYPE_1__ dev; } ;
typedef  scalar_t__ addr_t ;
struct TYPE_5__ {scalar_t__ recog_done; } ;
struct TYPE_6__ {int /*<<< orphan*/  state; TYPE_2__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_STATE_NOT_OPER ; 
 int /*<<< orphan*/  DEV_STATE_SENSE_ID ; 
 int /*<<< orphan*/  FUNC0 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*) ; 
 scalar_t__ FUNC2 (struct subchannel*,int /*<<< orphan*/ ) ; 
 struct subchannel* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct ccw_device *cdev)
{
	struct subchannel *sch = FUNC3(cdev->dev.parent);

	/*
	 * We used to start here with a sense pgid to find out whether a device
	 * is locked by someone else. Unfortunately, the sense pgid command
	 * code has other meanings on devices predating the path grouping
	 * algorithm, so we start with sense id and box the device after an
	 * timeout (or if sense pgid during path verification detects the device
	 * is locked, as may happen on newer devices).
	 */
	cdev->private->flags.recog_done = 0;
	cdev->private->state = DEV_STATE_SENSE_ID;
	if (FUNC2(sch, (u32) (addr_t) sch)) {
		FUNC0(cdev, DEV_STATE_NOT_OPER);
		return;
	}
	FUNC1(cdev);
}