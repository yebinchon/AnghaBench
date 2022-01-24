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
struct thermal_zone_device {int last_temperature; int temperature; int /*<<< orphan*/  device; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EAGAIN ; 
 int THERMAL_TEMP_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct thermal_zone_device*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct thermal_zone_device*) ; 

__attribute__((used)) static void FUNC6(struct thermal_zone_device *tz)
{
	int temp, ret;

	ret = FUNC4(tz, &temp);
	if (ret) {
		if (ret != -EAGAIN)
			FUNC1(&tz->device,
				 "failed to read out thermal zone (%d)\n",
				 ret);
		return;
	}

	FUNC2(&tz->lock);
	tz->last_temperature = tz->temperature;
	tz->temperature = temp;
	FUNC3(&tz->lock);

	FUNC5(tz);
	if (tz->last_temperature == THERMAL_TEMP_INVALID)
		FUNC0(&tz->device, "last_temperature N/A, current_temperature=%d\n",
			tz->temperature);
	else
		FUNC0(&tz->device, "last_temperature=%d, current_temperature=%d\n",
			tz->last_temperature, tz->temperature);
}