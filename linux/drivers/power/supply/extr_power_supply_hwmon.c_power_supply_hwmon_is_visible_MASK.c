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
typedef  int umode_t ;
typedef  int /*<<< orphan*/  u32 ;
struct power_supply_hwmon {int /*<<< orphan*/  psy; int /*<<< orphan*/  props; } ;
typedef  enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static umode_t FUNC5(const void *data,
					     enum hwmon_sensor_types type,
					     u32 attr, int channel)
{
	const struct power_supply_hwmon *psyhw = data;
	int prop;


	if (FUNC0(type, attr))
		return 0444;

	prop = FUNC2(type, attr, channel);
	if (prop < 0 || !FUNC4(prop, psyhw->props))
		return 0;

	if (FUNC3(psyhw->psy, prop) > 0 &&
	    FUNC1(type, attr))
		return 0644;

	return 0444;
}