#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  scsw; } ;
struct subchannel {TYPE_2__ schib; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_6__* private; TYPE_1__ dev; } ;
typedef  enum dev_event { ____Placeholder_dev_event } dev_event ;
struct TYPE_11__ {int doverify; } ;
struct TYPE_12__ {scalar_t__ state; TYPE_5__ flags; TYPE_4__* dma_area; } ;
struct TYPE_9__ {int /*<<< orphan*/  scsw; } ;
struct TYPE_10__ {TYPE_3__ irb; } ;

/* Variables and functions */
 scalar_t__ DEV_STATE_VERIFY ; 
 scalar_t__ DEV_STATE_W4SENSE ; 
 int /*<<< orphan*/  ENODEV ; 
 int SCSW_STCTL_STATUS_PEND ; 
 int /*<<< orphan*/  FUNC0 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*) ; 
 scalar_t__ FUNC2 (struct subchannel*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 struct subchannel* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct ccw_device *cdev, enum dev_event dev_event)
{
	struct subchannel *sch;

	if (cdev->private->state == DEV_STATE_W4SENSE) {
		cdev->private->flags.doverify = 1;
		return;
	}
	sch = FUNC5(cdev->dev.parent);
	/*
	 * Since we might not just be coming from an interrupt from the
	 * subchannel we have to update the schib.
	 */
	if (FUNC2(sch)) {
		FUNC0(cdev, -ENODEV);
		return;
	}

	if (FUNC3(&sch->schib.scsw) != 0 ||
	    (FUNC4(&sch->schib.scsw) & SCSW_STCTL_STATUS_PEND) ||
	    (FUNC4(&cdev->private->dma_area->irb.scsw) &
	     SCSW_STCTL_STATUS_PEND)) {
		/*
		 * No final status yet or final status not yet delivered
		 * to the device driver. Can't do path verification now,
		 * delay until final status was delivered.
		 */
		cdev->private->flags.doverify = 1;
		return;
	}
	/* Device is idle, we can do the path verification. */
	cdev->private->state = DEV_STATE_VERIFY;
	FUNC1(cdev);
}