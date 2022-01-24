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
struct ds2781_device_info {int /*<<< orphan*/  bat; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_NOW ; 
 int POWER_SUPPLY_STATUS_CHARGING ; 
 int POWER_SUPPLY_STATUS_DISCHARGING ; 
 int POWER_SUPPLY_STATUS_FULL ; 
 int POWER_SUPPLY_STATUS_NOT_CHARGING ; 
 int FUNC0 (struct ds2781_device_info*,int*) ; 
 int FUNC1 (struct ds2781_device_info*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ds2781_device_info *dev_info, int *status)
{
	int ret, current_uA, capacity;

	ret = FUNC1(dev_info, CURRENT_NOW, &current_uA);
	if (ret < 0)
		return ret;

	ret = FUNC0(dev_info, &capacity);
	if (ret < 0)
		return ret;

	if (FUNC2(dev_info->bat)) {
		if (capacity == 100)
			*status = POWER_SUPPLY_STATUS_FULL;
		else if (current_uA > 50000)
			*status = POWER_SUPPLY_STATUS_CHARGING;
		else
			*status = POWER_SUPPLY_STATUS_NOT_CHARGING;
	} else {
		*status = POWER_SUPPLY_STATUS_DISCHARGING;
	}
	return 0;
}