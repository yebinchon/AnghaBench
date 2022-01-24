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
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct device*,struct device_attribute*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count)
{
	unsigned long val;

	if (FUNC1(buf, 0, &val) < 0)
		return -EINVAL;

	if (val && FUNC0(dev, attr)) {
		int ret;

		ret = FUNC2(dev);
		if (ret)
			return ret;
	}

	return count;
}