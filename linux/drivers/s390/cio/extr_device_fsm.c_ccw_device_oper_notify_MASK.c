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
struct subchannel {int /*<<< orphan*/  vpm; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_2__* private; TYPE_1__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  path_new_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDEV_TODO_ENABLE_CMF ; 
 int /*<<< orphan*/  CDEV_TODO_REBIND ; 
 int /*<<< orphan*/  CIO_OPER ; 
 scalar_t__ NOTIFY_OK ; 
 scalar_t__ FUNC0 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ccw_device*) ; 
 struct subchannel* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ccw_device *cdev)
{
	struct subchannel *sch = FUNC3(cdev->dev.parent);

	if (FUNC0(cdev, CIO_OPER) == NOTIFY_OK) {
		/* Reenable channel measurements, if needed. */
		FUNC1(cdev, CDEV_TODO_ENABLE_CMF);
		/* Save indication for new paths. */
		cdev->private->path_new_mask = sch->vpm;
		return;
	}
	/* Driver doesn't want device back. */
	FUNC2(cdev);
	FUNC1(cdev, CDEV_TODO_REBIND);
}