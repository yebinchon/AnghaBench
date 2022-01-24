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
struct TYPE_2__ {struct attribute_group const** groups; } ;
struct attribute_group {int dummy; } ;
struct thermal_zone_device {TYPE_1__ device; struct attribute_group trips_attribute_group; scalar_t__ trips; } ;

/* Variables and functions */
 int FUNC0 (struct attribute_group**) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct thermal_zone_device*,int) ; 
 struct attribute_group** FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct attribute_group const**) ; 
 struct attribute_group** thermal_zone_attribute_groups ; 

int FUNC4(struct thermal_zone_device *tz,
				      int mask)
{
	const struct attribute_group **groups;
	int i, size, result;

	/* we need one extra for trips and the NULL to terminate the array */
	size = FUNC0(thermal_zone_attribute_groups) + 2;
	/* This also takes care of API requirement to be NULL terminated */
	groups = FUNC2(size, sizeof(*groups), GFP_KERNEL);
	if (!groups)
		return -ENOMEM;

	for (i = 0; i < size - 2; i++)
		groups[i] = thermal_zone_attribute_groups[i];

	if (tz->trips) {
		result = FUNC1(tz, mask);
		if (result) {
			FUNC3(groups);

			return result;
		}

		groups[size - 2] = &tz->trips_attribute_group;
	}

	tz->device.groups = groups;

	return 0;
}