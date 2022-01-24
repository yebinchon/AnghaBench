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
struct TYPE_2__ {unsigned long power; } ;
struct backlight_device {int /*<<< orphan*/  ops_lock; TYPE_1__ props; scalar_t__ ops; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (struct backlight_device*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long) ; 
 struct backlight_device* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	int rc;
	struct backlight_device *bd = FUNC5(dev);
	unsigned long power, old_power;

	rc = FUNC1(buf, 0, &power);
	if (rc)
		return rc;

	rc = -ENXIO;
	FUNC2(&bd->ops_lock);
	if (bd->ops) {
		FUNC4("set power to %lu\n", power);
		if (bd->props.power != power) {
			old_power = bd->props.power;
			bd->props.power = power;
			rc = FUNC0(bd);
			if (rc)
				bd->props.power = old_power;
			else
				rc = count;
		} else {
			rc = count;
		}
	}
	FUNC3(&bd->ops_lock);

	return rc;
}