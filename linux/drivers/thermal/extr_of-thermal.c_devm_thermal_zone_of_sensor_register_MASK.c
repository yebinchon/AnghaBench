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
struct thermal_zone_of_device_ops {int dummy; } ;
struct thermal_zone_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct thermal_zone_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct thermal_zone_device*) ; 
 int /*<<< orphan*/  devm_thermal_zone_of_sensor_release ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct thermal_zone_device**) ; 
 struct thermal_zone_device** FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct thermal_zone_device**) ; 
 struct thermal_zone_device* FUNC5 (struct device*,int,void*,struct thermal_zone_of_device_ops const*) ; 

struct thermal_zone_device *FUNC6(
	struct device *dev, int sensor_id,
	void *data, const struct thermal_zone_of_device_ops *ops)
{
	struct thermal_zone_device **ptr, *tzd;

	ptr = FUNC3(devm_thermal_zone_of_sensor_release, sizeof(*ptr),
			   GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	tzd = FUNC5(dev, sensor_id, data, ops);
	if (FUNC1(tzd)) {
		FUNC4(ptr);
		return tzd;
	}

	*ptr = tzd;
	FUNC2(dev, ptr);

	return tzd;
}