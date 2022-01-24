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
struct TYPE_6__ {int /*<<< orphan*/  ena; } ;
struct TYPE_8__ {int /*<<< orphan*/  scsw; TYPE_2__ pmcw; } ;
struct subchannel {TYPE_4__ schib; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_3__* private; TYPE_1__ dev; } ;
struct TYPE_7__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ DEV_STATE_ONLINE ; 
 int EINVAL ; 
 int EIO ; 
 int SCSW_ACTL_START_PEND ; 
 int FUNC0 (struct subchannel*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct subchannel* FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct ccw_device *cdev)
{
	struct subchannel *sch = FUNC3(cdev->dev.parent);

	if (!sch->schib.pmcw.ena)
		return -EINVAL;
	if (cdev->private->state != DEV_STATE_ONLINE)
		return -EIO;
	if (!FUNC2(&sch->schib.scsw) ||
	    !(FUNC1(&sch->schib.scsw) & SCSW_ACTL_START_PEND))
		return -EINVAL;
	return FUNC0(sch);
}