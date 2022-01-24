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
struct charger_manager {scalar_t__ emergency_stop; int /*<<< orphan*/  dev; struct charger_desc* desc; } ;
struct charger_desc {int temp_max; int temp_min; scalar_t__ temp_diff; } ;

/* Variables and functions */
 int CM_EVENT_BATT_COLD ; 
 int CM_EVENT_BATT_OVERHEAT ; 
 int FUNC0 (struct charger_manager*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct charger_manager *cm)
{
	struct charger_desc *desc = cm->desc;
	int temp, upper_limit, lower_limit;
	int ret = 0;

	ret = FUNC0(cm, &temp);
	if (ret) {
		/* FIXME:
		 * No information of battery temperature might
		 * occur hazardous result. We have to handle it
		 * depending on battery type.
		 */
		FUNC1(cm->dev, "Failed to get battery temperature\n");
		return 0;
	}

	upper_limit = desc->temp_max;
	lower_limit = desc->temp_min;

	if (cm->emergency_stop) {
		upper_limit -= desc->temp_diff;
		lower_limit += desc->temp_diff;
	}

	if (temp > upper_limit)
		ret = CM_EVENT_BATT_OVERHEAT;
	else if (temp < lower_limit)
		ret = CM_EVENT_BATT_COLD;

	return ret;
}