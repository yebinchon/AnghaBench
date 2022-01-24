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
struct device {int /*<<< orphan*/  driver; } ;
struct ccwgroup_device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct ccwgroup_device*) ; 
 int FUNC1 (struct ccwgroup_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 struct ccwgroup_device* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count)
{
	struct ccwgroup_device *gdev = FUNC5(dev);
	unsigned long value;
	int ret;

	FUNC2(dev);
	if (!dev->driver) {
		ret = -EINVAL;
		goto out;
	}

	ret = FUNC4(buf, 0, &value);
	if (ret)
		goto out;

	if (value == 1)
		ret = FUNC1(gdev);
	else if (value == 0)
		ret = FUNC0(gdev);
	else
		ret = -EINVAL;
out:
	FUNC3(dev);
	return (ret == 0) ? count : ret;
}