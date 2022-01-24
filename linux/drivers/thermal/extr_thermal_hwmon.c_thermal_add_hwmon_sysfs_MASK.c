#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct thermal_zone_device {int /*<<< orphan*/  device; int /*<<< orphan*/  type; } ;
struct TYPE_8__ {int mode; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {TYPE_3__ attr; int /*<<< orphan*/  show; } ;
struct TYPE_7__ {TYPE_4__ attr; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {TYPE_4__ attr; int /*<<< orphan*/  name; } ;
struct thermal_hwmon_temp {int count; int /*<<< orphan*/  device; TYPE_2__ temp_input; int /*<<< orphan*/  tz_list; int /*<<< orphan*/  hwmon_node; int /*<<< orphan*/  node; TYPE_1__ temp_crit; struct thermal_zone_device* tz; int /*<<< orphan*/  type; } ;
struct thermal_hwmon_device {int count; int /*<<< orphan*/  device; TYPE_2__ temp_input; int /*<<< orphan*/  tz_list; int /*<<< orphan*/  hwmon_node; int /*<<< orphan*/  node; TYPE_1__ temp_crit; struct thermal_zone_device* tz; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THERMAL_NAME_LENGTH ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct thermal_hwmon_temp*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct thermal_hwmon_temp*) ; 
 struct thermal_hwmon_temp* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char,char) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  temp_crit_show ; 
 int /*<<< orphan*/  temp_input_show ; 
 int /*<<< orphan*/  thermal_hwmon_list ; 
 int /*<<< orphan*/  thermal_hwmon_list_lock ; 
 struct thermal_hwmon_temp* FUNC16 (struct thermal_zone_device*) ; 
 scalar_t__ FUNC17 (struct thermal_zone_device*) ; 

int FUNC18(struct thermal_zone_device *tz)
{
	struct thermal_hwmon_device *hwmon;
	struct thermal_hwmon_temp *temp;
	int new_hwmon_device = 1;
	int result;

	hwmon = FUNC16(tz);
	if (hwmon) {
		new_hwmon_device = 0;
		goto register_sys_interface;
	}

	hwmon = FUNC8(sizeof(*hwmon), GFP_KERNEL);
	if (!hwmon)
		return -ENOMEM;

	FUNC0(&hwmon->tz_list);
	FUNC13(hwmon->type, tz->type, THERMAL_NAME_LENGTH);
	FUNC14(hwmon->type, '-', '_');
	hwmon->device = FUNC5(&tz->device, hwmon->type,
							hwmon, NULL, NULL);
	if (FUNC1(hwmon->device)) {
		result = FUNC2(hwmon->device);
		goto free_mem;
	}

 register_sys_interface:
	temp = FUNC8(sizeof(*temp), GFP_KERNEL);
	if (!temp) {
		result = -ENOMEM;
		goto unregister_name;
	}

	temp->tz = tz;
	hwmon->count++;

	FUNC12(temp->temp_input.name, sizeof(temp->temp_input.name),
		 "temp%d_input", hwmon->count);
	temp->temp_input.attr.attr.name = temp->temp_input.name;
	temp->temp_input.attr.attr.mode = 0444;
	temp->temp_input.attr.show = temp_input_show;
	FUNC15(&temp->temp_input.attr.attr);
	result = FUNC3(hwmon->device, &temp->temp_input.attr);
	if (result)
		goto free_temp_mem;

	if (FUNC17(tz)) {
		FUNC12(temp->temp_crit.name,
				sizeof(temp->temp_crit.name),
				"temp%d_crit", hwmon->count);
		temp->temp_crit.attr.attr.name = temp->temp_crit.name;
		temp->temp_crit.attr.attr.mode = 0444;
		temp->temp_crit.attr.show = temp_crit_show;
		FUNC15(&temp->temp_crit.attr.attr);
		result = FUNC3(hwmon->device,
					    &temp->temp_crit.attr);
		if (result)
			goto unregister_input;
	}

	FUNC10(&thermal_hwmon_list_lock);
	if (new_hwmon_device)
		FUNC9(&hwmon->node, &thermal_hwmon_list);
	FUNC9(&temp->hwmon_node, &hwmon->tz_list);
	FUNC11(&thermal_hwmon_list_lock);

	return 0;

 unregister_input:
	FUNC4(hwmon->device, &temp->temp_input.attr);
 free_temp_mem:
	FUNC7(temp);
 unregister_name:
	if (new_hwmon_device)
		FUNC6(hwmon->device);
 free_mem:
	if (new_hwmon_device)
		FUNC7(hwmon);

	return result;
}