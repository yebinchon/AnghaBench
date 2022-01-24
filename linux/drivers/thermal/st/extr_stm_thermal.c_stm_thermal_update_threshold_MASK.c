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
struct stm_thermal_sensor {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  THERMAL_DEVICE_DISABLED ; 
 int /*<<< orphan*/  THERMAL_DEVICE_ENABLED ; 
 int FUNC0 (struct stm_thermal_sensor*) ; 
 int FUNC1 (struct stm_thermal_sensor*) ; 
 int FUNC2 (struct stm_thermal_sensor*) ; 
 int FUNC3 (struct stm_thermal_sensor*) ; 
 int FUNC4 (struct stm_thermal_sensor*) ; 

__attribute__((used)) static int FUNC5(struct stm_thermal_sensor *sensor)
{
	int ret;

	sensor->mode = THERMAL_DEVICE_DISABLED;

	ret = FUNC2(sensor);
	if (ret)
		return ret;

	ret = FUNC0(sensor);
	if (ret)
		return ret;

	ret = FUNC4(sensor);
	if (ret)
		return ret;

	ret = FUNC1(sensor);
	if (ret)
		return ret;

	ret = FUNC3(sensor);
	if (ret)
		return ret;

	sensor->mode = THERMAL_DEVICE_ENABLED;

	return 0;
}