#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct subchannel {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_1__* private; TYPE_2__ dev; } ;
typedef  scalar_t__ addr_t ;
struct TYPE_3__ {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_EVENT_NOTOPER ; 
 scalar_t__ DEV_STATE_BOXED ; 
 scalar_t__ DEV_STATE_OFFLINE ; 
 scalar_t__ DEV_STATE_VERIFY ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct ccw_device*) ; 
 int FUNC1 (struct subchannel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 struct subchannel* FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(struct ccw_device *cdev)
{
	struct subchannel *sch;
	int ret;

	if ((cdev->private->state != DEV_STATE_OFFLINE) &&
	    (cdev->private->state != DEV_STATE_BOXED))
		return -EINVAL;
	sch = FUNC3(cdev->dev.parent);
	ret = FUNC1(sch, (u32)(addr_t)sch);
	if (ret != 0) {
		/* Couldn't enable the subchannel for i/o. Sick device. */
		if (ret == -ENODEV)
			FUNC2(cdev, DEV_EVENT_NOTOPER);
		return ret;
	}
	/* Start initial path verification. */
	cdev->private->state = DEV_STATE_VERIFY;
	FUNC0(cdev);
	return 0;
}