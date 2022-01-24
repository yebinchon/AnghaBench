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
struct subchannel {int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_3__* private; TYPE_2__* drv; int /*<<< orphan*/  online; TYPE_1__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/ * cmb; } ;
struct TYPE_5__ {int (* freeze ) (struct ccw_device*) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 int FUNC0 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC2 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ccw_device*) ; 
 struct ccw_device* FUNC6 (struct device*) ; 
 struct subchannel* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct device *dev)
{
	struct ccw_device *cdev = FUNC6(dev);
	struct subchannel *sch = FUNC7(cdev->dev.parent);
	int ret, cm_enabled;

	/* Fail suspend while device is in transistional state. */
	if (!FUNC2(cdev))
		return -EAGAIN;
	if (!cdev->online)
		return 0;
	if (cdev->drv && cdev->drv->freeze) {
		ret = cdev->drv->freeze(cdev);
		if (ret)
			return ret;
	}

	FUNC3(sch->lock);
	cm_enabled = cdev->private->cmb != NULL;
	FUNC4(sch->lock);
	if (cm_enabled) {
		/* Don't have the css write on memory. */
		ret = FUNC0(cdev, 0);
		if (ret)
			return ret;
	}
	/* From here on, disallow device driver I/O. */
	FUNC3(sch->lock);
	ret = FUNC1(sch);
	FUNC4(sch->lock);

	return ret;
}