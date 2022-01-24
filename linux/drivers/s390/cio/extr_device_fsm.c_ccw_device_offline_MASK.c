#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  scsw; } ;
struct subchannel {TYPE_2__ schib; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_4__* private; TYPE_1__ dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  pgroup; scalar_t__ donotify; } ;
struct TYPE_8__ {scalar_t__ state; TYPE_3__ flags; } ;

/* Variables and functions */
 scalar_t__ DEV_STATE_BOXED ; 
 scalar_t__ DEV_STATE_DISBAND_PGID ; 
 scalar_t__ DEV_STATE_DISCONNECTED ; 
 scalar_t__ DEV_STATE_NOT_OPER ; 
 scalar_t__ DEV_STATE_OFFLINE ; 
 scalar_t__ DEV_STATE_ONLINE ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct ccw_device*) ; 
 scalar_t__ FUNC3 (struct subchannel*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 struct subchannel* FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(struct ccw_device *cdev)
{
	struct subchannel *sch;

	/* Allow ccw_device_offline while disconnected. */
	if (cdev->private->state == DEV_STATE_DISCONNECTED ||
	    cdev->private->state == DEV_STATE_NOT_OPER) {
		cdev->private->flags.donotify = 0;
		FUNC1(cdev, DEV_STATE_NOT_OPER);
		return 0;
	}
	if (cdev->private->state == DEV_STATE_BOXED) {
		FUNC1(cdev, DEV_STATE_BOXED);
		return 0;
	}
	if (FUNC2(cdev)) {
		FUNC1(cdev, DEV_STATE_OFFLINE);
		return 0;
	}
	sch = FUNC5(cdev->dev.parent);
	if (FUNC3(sch))
		return -ENODEV;
	if (FUNC4(&sch->schib.scsw) != 0)
		return -EBUSY;
	if (cdev->private->state != DEV_STATE_ONLINE)
		return -EINVAL;
	/* Are we doing path grouping? */
	if (!cdev->private->flags.pgroup) {
		/* No, set state offline immediately. */
		FUNC1(cdev, DEV_STATE_OFFLINE);
		return 0;
	}
	/* Start Set Path Group commands. */
	cdev->private->state = DEV_STATE_DISBAND_PGID;
	FUNC0(cdev);
	return 0;
}