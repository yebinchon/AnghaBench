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
struct thermal_zone_device {struct intel_soc_dts_sensor_entry* devdata; } ;
struct intel_soc_dts_sensors {int tj_max; int /*<<< orphan*/  dts_update_lock; } ;
struct intel_soc_dts_sensor_entry {int /*<<< orphan*/ * trip_types; struct intel_soc_dts_sensors* sensors; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct intel_soc_dts_sensor_entry*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct thermal_zone_device *tzd, int trip,
			     int temp)
{
	struct intel_soc_dts_sensor_entry *dts = tzd->devdata;
	struct intel_soc_dts_sensors *sensors = dts->sensors;
	int status;

	if (temp > sensors->tj_max)
		return -EINVAL;

	FUNC0(&sensors->dts_update_lock);
	status = FUNC2(tzd->devdata, trip, temp,
				  dts->trip_types[trip]);
	FUNC1(&sensors->dts_update_lock);

	return status;
}