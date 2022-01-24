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
struct thermal_zone_device {int temperature; int passive; int /*<<< orphan*/  device; TYPE_1__* ops; struct power_allocator_params* governor_data; } ;
struct power_allocator_params {int trip_max_desired_temperature; int trip_switch_on; } ;
struct TYPE_2__ {int (* get_trip_temp ) (struct thermal_zone_device*,int,int*) ;} ;

/* Variables and functions */
 int FUNC0 (struct thermal_zone_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct thermal_zone_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct power_allocator_params*) ; 
 int FUNC4 (struct thermal_zone_device*,int,int*) ; 
 int FUNC5 (struct thermal_zone_device*,int,int*) ; 

__attribute__((used)) static int FUNC6(struct thermal_zone_device *tz, int trip)
{
	int ret;
	int switch_on_temp, control_temp;
	struct power_allocator_params *params = tz->governor_data;

	/*
	 * We get called for every trip point but we only need to do
	 * our calculations once
	 */
	if (trip != params->trip_max_desired_temperature)
		return 0;

	ret = tz->ops->get_trip_temp(tz, params->trip_switch_on,
				     &switch_on_temp);
	if (!ret && (tz->temperature < switch_on_temp)) {
		tz->passive = 0;
		FUNC3(params);
		FUNC1(tz);
		return 0;
	}

	tz->passive = 1;

	ret = tz->ops->get_trip_temp(tz, params->trip_max_desired_temperature,
				&control_temp);
	if (ret) {
		FUNC2(&tz->device,
			 "Failed to get the maximum desired temperature: %d\n",
			 ret);
		return ret;
	}

	return FUNC0(tz, control_temp);
}