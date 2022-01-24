#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thermal_zone_device {scalar_t__ trips; struct power_allocator_params* governor_data; TYPE_2__* tzp; TYPE_1__* ops; int /*<<< orphan*/  device; } ;
struct power_allocator_params {int allocated_tzp; int /*<<< orphan*/  trip_switch_on; int /*<<< orphan*/  trip_max_desired_temperature; } ;
struct TYPE_4__ {int /*<<< orphan*/  sustainable_power; } ;
struct TYPE_3__ {int (* get_trip_temp ) (struct thermal_zone_device*,int /*<<< orphan*/ ,int*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct thermal_zone_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct thermal_zone_device*,struct power_allocator_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct power_allocator_params*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct power_allocator_params*) ; 
 int FUNC6 (struct thermal_zone_device*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC7(struct thermal_zone_device *tz)
{
	int ret;
	struct power_allocator_params *params;
	int control_temp;

	params = FUNC4(sizeof(*params), GFP_KERNEL);
	if (!params)
		return -ENOMEM;

	if (!tz->tzp) {
		tz->tzp = FUNC4(sizeof(*tz->tzp), GFP_KERNEL);
		if (!tz->tzp) {
			ret = -ENOMEM;
			goto free_params;
		}

		params->allocated_tzp = true;
	}

	if (!tz->tzp->sustainable_power)
		FUNC0(&tz->device, "power_allocator: sustainable_power will be estimated\n");

	FUNC2(tz, params);

	if (tz->trips > 0) {
		ret = tz->ops->get_trip_temp(tz,
					params->trip_max_desired_temperature,
					&control_temp);
		if (!ret)
			FUNC1(tz, tz->tzp->sustainable_power,
					       params->trip_switch_on,
					       control_temp, false);
	}

	FUNC5(params);

	tz->governor_data = params;

	return 0;

free_params:
	FUNC3(params);

	return ret;
}