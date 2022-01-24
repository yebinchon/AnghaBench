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
struct dasd_device {unsigned long path_interval; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 unsigned long DASD_INTERVAL_MAX ; 
 size_t EINVAL ; 
 size_t ENODEV ; 
 scalar_t__ FUNC0 (struct dasd_device*) ; 
 struct dasd_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *dev, struct device_attribute *attr,
	       const char *buf, size_t count)
{
	struct dasd_device *device;
	unsigned long flags;
	unsigned long val;

	device = FUNC1(FUNC7(dev));
	if (FUNC0(device))
		return -ENODEV;

	if ((FUNC4(buf, 10, &val) != 0) ||
	    (val > DASD_INTERVAL_MAX) || val == 0) {
		FUNC2(device);
		return -EINVAL;
	}
	FUNC5(FUNC3(FUNC7(dev)), flags);
	if (val)
		device->path_interval = val;
	FUNC6(FUNC3(FUNC7(dev)), flags);
	FUNC2(device);
	return count;
}