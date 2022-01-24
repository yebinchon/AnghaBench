#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ccwgroup_device {scalar_t__ state; int /*<<< orphan*/  onoff; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ CCWGROUP_OFFLINE ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ccwgroup_device*) ; 
 scalar_t__ FUNC3 (struct device*,struct device_attribute*) ; 
 struct ccwgroup_device* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				      struct device_attribute *attr,
				      const char *buf, size_t count)
{
	struct ccwgroup_device *gdev = FUNC4(dev);
	int rc = 0;

	/* Prevent concurrent online/offline processing and ungrouping. */
	if (FUNC0(&gdev->onoff, 0, 1) != 0)
		return -EAGAIN;
	if (gdev->state != CCWGROUP_OFFLINE) {
		rc = -EINVAL;
		goto out;
	}

	if (FUNC3(dev, attr))
		FUNC2(gdev);
	else
		rc = -ENODEV;
out:
	if (rc) {
		/* Release onoff "lock" when ungrouping failed. */
		FUNC1(&gdev->onoff, 0);
		return rc;
	}
	return count;
}