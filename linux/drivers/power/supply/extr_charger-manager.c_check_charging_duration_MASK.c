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
typedef  scalar_t__ u64 ;
struct charger_manager {scalar_t__ charging_start_time; scalar_t__ charging_end_time; int /*<<< orphan*/  dev; scalar_t__ charger_enabled; struct charger_desc* desc; } ;
struct charger_desc {scalar_t__ charging_max_duration_ms; scalar_t__ discharging_max_duration_ms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct charger_manager*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct charger_manager*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct charger_manager*,char*) ; 

__attribute__((used)) static int FUNC6(struct charger_manager *cm)
{
	struct charger_desc *desc = cm->desc;
	u64 curr = FUNC3(FUNC2());
	u64 duration;
	int ret = false;

	if (!desc->charging_max_duration_ms &&
			!desc->discharging_max_duration_ms)
		return ret;

	if (cm->charger_enabled) {
		duration = curr - cm->charging_start_time;

		if (duration > desc->charging_max_duration_ms) {
			FUNC0(cm->dev, "Charging duration exceed %ums\n",
				 desc->charging_max_duration_ms);
			FUNC5(cm, "Discharging");
			FUNC4(cm, false);
			ret = true;
		}
	} else if (FUNC1(cm) && !cm->charger_enabled) {
		duration = curr - cm->charging_end_time;

		if (duration > desc->discharging_max_duration_ms &&
				FUNC1(cm)) {
			FUNC0(cm->dev, "Discharging duration exceed %ums\n",
				 desc->discharging_max_duration_ms);
			FUNC5(cm, "Recharging");
			FUNC4(cm, true);
			ret = true;
		}
	}

	return ret;
}