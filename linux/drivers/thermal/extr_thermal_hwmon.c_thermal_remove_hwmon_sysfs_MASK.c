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
struct thermal_zone_device {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {int /*<<< orphan*/  attr; } ;
struct TYPE_3__ {int /*<<< orphan*/  attr; } ;
struct thermal_hwmon_temp {int /*<<< orphan*/  device; int /*<<< orphan*/  node; int /*<<< orphan*/  tz_list; int /*<<< orphan*/  hwmon_node; TYPE_2__ temp_crit; TYPE_1__ temp_input; } ;
struct thermal_hwmon_device {int /*<<< orphan*/  device; int /*<<< orphan*/  node; int /*<<< orphan*/  tz_list; int /*<<< orphan*/  hwmon_node; TYPE_2__ temp_crit; TYPE_1__ temp_input; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct thermal_hwmon_temp*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  thermal_hwmon_list_lock ; 
 struct thermal_hwmon_temp* FUNC8 (struct thermal_zone_device*) ; 
 struct thermal_hwmon_temp* FUNC9 (struct thermal_hwmon_temp*,struct thermal_zone_device*) ; 
 scalar_t__ FUNC10 (struct thermal_zone_device*) ; 
 scalar_t__ FUNC11 (int) ; 

void FUNC12(struct thermal_zone_device *tz)
{
	struct thermal_hwmon_device *hwmon;
	struct thermal_hwmon_temp *temp;

	hwmon = FUNC8(tz);
	if (FUNC11(!hwmon)) {
		/* Should never happen... */
		FUNC0(&tz->device, "hwmon device lookup failed!\n");
		return;
	}

	temp = FUNC9(hwmon, tz);
	if (FUNC11(!temp)) {
		/* Should never happen... */
		FUNC0(&tz->device, "temperature input lookup failed!\n");
		return;
	}

	FUNC1(hwmon->device, &temp->temp_input.attr);
	if (FUNC10(tz))
		FUNC1(hwmon->device, &temp->temp_crit.attr);

	FUNC6(&thermal_hwmon_list_lock);
	FUNC4(&temp->hwmon_node);
	FUNC3(temp);
	if (!FUNC5(&hwmon->tz_list)) {
		FUNC7(&thermal_hwmon_list_lock);
		return;
	}
	FUNC4(&hwmon->node);
	FUNC7(&thermal_hwmon_list_lock);

	FUNC2(hwmon->device);
	FUNC3(hwmon);
}