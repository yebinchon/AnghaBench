#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct charger_manager {int charger_enabled; int /*<<< orphan*/  dev; void* charging_end_time; void* charging_start_time; scalar_t__ emergency_stop; struct charger_desc* desc; } ;
struct charger_desc {int num_charger_regulators; TYPE_1__* charger_regulators; } ;
struct TYPE_2__ {int /*<<< orphan*/  regulator_name; int /*<<< orphan*/  consumer; scalar_t__ externally_control; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct charger_manager *cm, bool enable)
{
	int err = 0, i;
	struct charger_desc *desc = cm->desc;

	/* Ignore if it's redundant command */
	if (enable == cm->charger_enabled)
		return 0;

	if (enable) {
		if (cm->emergency_stop)
			return -EAGAIN;

		/*
		 * Save start time of charging to limit
		 * maximum possible charging time.
		 */
		cm->charging_start_time = FUNC2(FUNC1());
		cm->charging_end_time = 0;

		for (i = 0 ; i < desc->num_charger_regulators ; i++) {
			if (desc->charger_regulators[i].externally_control)
				continue;

			err = FUNC4(desc->charger_regulators[i].consumer);
			if (err < 0) {
				FUNC0(cm->dev, "Cannot enable %s regulator\n",
					 desc->charger_regulators[i].regulator_name);
			}
		}
	} else {
		/*
		 * Save end time of charging to maintain fully charged state
		 * of battery after full-batt.
		 */
		cm->charging_start_time = 0;
		cm->charging_end_time = FUNC2(FUNC1());

		for (i = 0 ; i < desc->num_charger_regulators ; i++) {
			if (desc->charger_regulators[i].externally_control)
				continue;

			err = FUNC3(desc->charger_regulators[i].consumer);
			if (err < 0) {
				FUNC0(cm->dev, "Cannot disable %s regulator\n",
					 desc->charger_regulators[i].regulator_name);
			}
		}

		/*
		 * Abnormal battery state - Stop charging forcibly,
		 * even if charger was enabled at the other places
		 */
		for (i = 0; i < desc->num_charger_regulators; i++) {
			if (FUNC6(
				    desc->charger_regulators[i].consumer)) {
				FUNC5(
					desc->charger_regulators[i].consumer);
				FUNC0(cm->dev, "Disable regulator(%s) forcibly\n",
					 desc->charger_regulators[i].regulator_name);
			}
		}
	}

	if (!err)
		cm->charger_enabled = enable;

	return err;
}