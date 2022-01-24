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
struct ccw_device {TYPE_2__* private; } ;
struct TYPE_3__ {int recog_done; } ;
struct TYPE_4__ {int state; TYPE_1__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDEV_TODO_REGISTER ; 
 int /*<<< orphan*/  CDEV_TODO_UNREG ; 
#define  DEV_STATE_BOXED 130 
#define  DEV_STATE_NOT_OPER 129 
#define  DEV_STATE_OFFLINE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ccw_device_init_count ; 
 int /*<<< orphan*/  ccw_device_init_wq ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ css_init_done ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct ccw_device *cdev)
{
	if (css_init_done == 0) {
		cdev->private->flags.recog_done = 1;
		return;
	}
	switch (cdev->private->state) {
	case DEV_STATE_BOXED:
		/* Device did not respond in time. */
	case DEV_STATE_NOT_OPER:
		cdev->private->flags.recog_done = 1;
		/* Remove device found not operational. */
		FUNC1(cdev, CDEV_TODO_UNREG);
		if (FUNC0(&ccw_device_init_count))
			FUNC2(&ccw_device_init_wq);
		break;
	case DEV_STATE_OFFLINE:
		/*
		 * We can't register the device in interrupt context so
		 * we schedule a work item.
		 */
		FUNC1(cdev, CDEV_TODO_REGISTER);
		break;
	}
}