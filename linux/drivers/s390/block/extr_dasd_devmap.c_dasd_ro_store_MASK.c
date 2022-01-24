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
struct dasd_device {TYPE_1__* block; int /*<<< orphan*/  flags; } ;
struct ccw_device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  open_count; int /*<<< orphan*/  gdp; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_FEATURE_READONLY ; 
 int /*<<< orphan*/  DASD_FLAG_DEVICE_RO ; 
 int /*<<< orphan*/  DASD_FLAG_OFFLINE ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct dasd_device* FUNC3 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct dasd_device*) ; 
 int FUNC5 (struct ccw_device*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct ccw_device*) ; 
 scalar_t__ FUNC7 (char const*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ccw_device* FUNC12 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC13(struct device *dev, struct device_attribute *attr,
	      const char *buf, size_t count)
{
	struct ccw_device *cdev = FUNC12(dev);
	struct dasd_device *device;
	unsigned long flags;
	unsigned int val;
	int rc;

	if (FUNC7(buf, 0, &val) || val > 1)
		return -EINVAL;

	rc = FUNC5(cdev, DASD_FEATURE_READONLY, val);
	if (rc)
		return rc;

	device = FUNC3(cdev);
	if (FUNC0(device))
		return count;

	FUNC9(FUNC6(cdev), flags);
	val = val || FUNC11(DASD_FLAG_DEVICE_RO, &device->flags);

	if (!device->block || !device->block->gdp ||
	    FUNC11(DASD_FLAG_OFFLINE, &device->flags)) {
		FUNC10(FUNC6(cdev), flags);
		goto out;
	}
	/* Increase open_count to avoid losing the block device */
	FUNC2(&device->block->open_count);
	FUNC10(FUNC6(cdev), flags);

	FUNC8(device->block->gdp, val);
	FUNC1(&device->block->open_count);

out:
	FUNC4(device);

	return count;
}