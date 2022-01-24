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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ccw_device {TYPE_1__* private; } ;
typedef  int ssize_t ;
struct TYPE_2__ {scalar_t__ state; int /*<<< orphan*/  onoff; int /*<<< orphan*/  todo_work; } ;

/* Variables and functions */
 scalar_t__ DEV_STATE_DISCONNECTED ; 
 int EAGAIN ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int FUNC5 (char const*,int,unsigned long*) ; 
 int FUNC6 (struct ccw_device*) ; 
 int FUNC7 (struct ccw_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,size_t) ; 
 struct ccw_device* FUNC9 (struct device*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC11 (struct device *dev, struct device_attribute *attr,
			     const char *buf, size_t count)
{
	struct ccw_device *cdev = FUNC9(dev);
	int force, ret;
	unsigned long i;

	/* Prevent conflict between multiple on-/offline processing requests. */
	if (FUNC0(&cdev->private->onoff, 0, 1) != 0)
		return -EAGAIN;
	/* Prevent conflict between internal I/Os and on-/offline processing. */
	if (!FUNC2(cdev) &&
	    cdev->private->state != DEV_STATE_DISCONNECTED) {
		ret = -EAGAIN;
		goto out;
	}
	/* Prevent conflict between pending work and on-/offline processing.*/
	if (FUNC10(&cdev->private->todo_work)) {
		ret = -EAGAIN;
		goto out;
	}
	if (!FUNC8(buf, "force\n", count)) {
		force = 1;
		i = 1;
		ret = 0;
	} else {
		force = 0;
		ret = FUNC5(buf, 16, &i);
	}
	if (ret)
		goto out;

	FUNC3(dev);
	switch (i) {
	case 0:
		ret = FUNC6(cdev);
		break;
	case 1:
		ret = FUNC7(cdev, force);
		break;
	default:
		ret = -EINVAL;
	}
	FUNC4(dev);

out:
	FUNC1(&cdev->private->onoff, 0);
	return (ret < 0) ? ret : count;
}