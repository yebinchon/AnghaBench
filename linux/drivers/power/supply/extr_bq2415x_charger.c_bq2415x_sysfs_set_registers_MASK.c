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
struct power_supply {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bq2415x_device {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ FUNC0 (struct bq2415x_device*,unsigned int,unsigned int) ; 
 struct power_supply* FUNC1 (struct device*) ; 
 struct bq2415x_device* FUNC2 (struct power_supply*) ; 
 int FUNC3 (char const*,char*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
					   struct device_attribute *attr,
					   const char *buf,
					   size_t count)
{
	struct power_supply *psy = FUNC1(dev);
	struct bq2415x_device *bq = FUNC2(psy);
	ssize_t ret = 0;
	unsigned int reg;
	unsigned int val;

	if (FUNC3(buf, "%x %x", &reg, &val) != 2)
		return -EINVAL;

	if (reg > 4 || val > 255)
		return -EINVAL;

	ret = FUNC0(bq, reg, val);
	if (ret < 0)
		return ret;
	return count;
}