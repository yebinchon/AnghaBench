#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ccw_device {TYPE_1__* private; int /*<<< orphan*/  (* handler ) (struct ccw_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  enum dev_event { ____Placeholder_dev_event } dev_event ;
struct TYPE_2__ {int /*<<< orphan*/  async_kill_io_rc; int /*<<< orphan*/  intparm; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int HZ ; 
 int FUNC1 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ccw_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ccw_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ccw_device *cdev, enum dev_event dev_event)
{
	int ret;

	ret = FUNC1(cdev);
	if (ret == -EBUSY) {
		FUNC3(cdev, 3*HZ);
		return;
	}
	/* Start delayed path verification. */
	FUNC2(cdev, 0);
	if (cdev->handler)
		cdev->handler(cdev, cdev->private->intparm,
			      FUNC0(cdev->private->async_kill_io_rc));
}