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
typedef  int /*<<< orphan*/  u32 ;
struct thermal_zone_device {TYPE_1__* tzp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  sustainable_power; } ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t EIO ; 
 scalar_t__ FUNC0 (char const*,int,int /*<<< orphan*/ *) ; 
 struct thermal_zone_device* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC2(struct device *dev, struct device_attribute *devattr,
			const char *buf, size_t count)
{
	struct thermal_zone_device *tz = FUNC1(dev);
	u32 sustainable_power;

	if (!tz->tzp)
		return -EIO;

	if (FUNC0(buf, 10, &sustainable_power))
		return -EINVAL;

	tz->tzp->sustainable_power = sustainable_power;

	return count;
}