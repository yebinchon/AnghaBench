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
struct thermal_zone_device {int dummy; } ;
typedef  enum thermal_device_mode { ____Placeholder_thermal_device_mode } thermal_device_mode ;

/* Variables and functions */
 int THERMAL_DEVICE_ENABLED ; 
 int /*<<< orphan*/  dts_update_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct thermal_zone_device*) ; 
 int FUNC3 (struct thermal_zone_device*) ; 

__attribute__((used)) static int FUNC4(struct thermal_zone_device *tzd,
				enum thermal_device_mode mode)
{
	int ret;

	FUNC0(&dts_update_mutex);
	if (mode == THERMAL_DEVICE_ENABLED)
		ret = FUNC3(tzd);
	else
		ret = FUNC2(tzd);
	FUNC1(&dts_update_mutex);

	return ret;
}