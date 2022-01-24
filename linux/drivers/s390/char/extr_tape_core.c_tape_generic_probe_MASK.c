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
struct tape_device {int /*<<< orphan*/  cdev_id; struct ccw_device* cdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct ccw_device {int /*<<< orphan*/  handler; TYPE_1__ dev; } ;
struct ccw_dev_id {int dummy; } ;

/* Variables and functions */
 int CCWDEV_DO_MULTIPATH ; 
 int CCWDEV_DO_PATHGROUP ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct tape_device*) ; 
 int /*<<< orphan*/  __tape_do_irq ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*,struct ccw_dev_id*) ; 
 int /*<<< orphan*/  FUNC2 (struct ccw_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct tape_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ccw_dev_id*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct tape_device* FUNC6 () ; 
 int /*<<< orphan*/  tape_attr_group ; 
 int /*<<< orphan*/  FUNC7 (struct tape_device*) ; 

int
FUNC8(struct ccw_device *cdev)
{
	struct tape_device *device;
	int ret;
	struct ccw_dev_id dev_id;

	device = FUNC6();
	if (FUNC0(device))
		return -ENODEV;
	FUNC2(cdev, CCWDEV_DO_PATHGROUP |
				     CCWDEV_DO_MULTIPATH);
	ret = FUNC5(&cdev->dev.kobj, &tape_attr_group);
	if (ret) {
		FUNC7(device);
		return ret;
	}
	FUNC3(&cdev->dev, device);
	cdev->handler = __tape_do_irq;
	device->cdev = cdev;
	FUNC1(cdev, &dev_id);
	device->cdev_id = FUNC4(&dev_id);
	return ret;
}