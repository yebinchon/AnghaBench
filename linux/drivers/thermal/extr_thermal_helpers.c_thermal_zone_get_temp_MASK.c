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
struct thermal_zone_device {int emul_temperature; int trips; int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
typedef  enum thermal_trip_type { ____Placeholder_thermal_trip_type } thermal_trip_type ;
struct TYPE_2__ {int (* get_temp ) (struct thermal_zone_device*,int*) ;int (* get_trip_type ) (struct thermal_zone_device*,int,int*) ;int (* get_trip_temp ) (struct thermal_zone_device*,int,int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_THERMAL_EMULATION ; 
 int EINVAL ; 
 int INT_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct thermal_zone_device*) ; 
 int THERMAL_TRIP_CRITICAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct thermal_zone_device*,int*) ; 
 int FUNC5 (struct thermal_zone_device*,int,int*) ; 
 int FUNC6 (struct thermal_zone_device*,int,int*) ; 

int FUNC7(struct thermal_zone_device *tz, int *temp)
{
	int ret = -EINVAL;
	int count;
	int crit_temp = INT_MAX;
	enum thermal_trip_type type;

	if (!tz || FUNC1(tz) || !tz->ops->get_temp)
		goto exit;

	FUNC2(&tz->lock);

	ret = tz->ops->get_temp(tz, temp);

	if (FUNC0(CONFIG_THERMAL_EMULATION) && tz->emul_temperature) {
		for (count = 0; count < tz->trips; count++) {
			ret = tz->ops->get_trip_type(tz, count, &type);
			if (!ret && type == THERMAL_TRIP_CRITICAL) {
				ret = tz->ops->get_trip_temp(tz, count,
						&crit_temp);
				break;
			}
		}

		/*
		 * Only allow emulating a temperature when the real temperature
		 * is below the critical temperature so that the emulation code
		 * cannot hide critical conditions.
		 */
		if (!ret && *temp < crit_temp)
			*temp = tz->emul_temperature;
	}

	FUNC3(&tz->lock);
exit:
	return ret;
}