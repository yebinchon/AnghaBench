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
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct charger_manager {int emergency_stop; TYPE_1__ fullbatt_vchk_work; int /*<<< orphan*/  dev; scalar_t__ charger_enabled; } ;

/* Variables and functions */
 size_t CM_EVENT_BATT_FULL ; 
 scalar_t__ FUNC0 (struct charger_manager*) ; 
 int FUNC1 (struct charger_manager*) ; 
 char** default_event_names ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct charger_manager*) ; 
 scalar_t__ FUNC6 (struct charger_manager*) ; 
 int /*<<< orphan*/  FUNC7 (struct charger_manager*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct charger_manager*,char*) ; 

__attribute__((used)) static bool FUNC9(struct charger_manager *cm)
{
	int temp_alrt;

	temp_alrt = FUNC1(cm);

	/* It has been stopped already */
	if (temp_alrt && cm->emergency_stop)
		return false;

	/*
	 * Check temperature whether overheat or cold.
	 * If temperature is out of range normal state, stop charging.
	 */
	if (temp_alrt) {
		cm->emergency_stop = temp_alrt;
		if (!FUNC7(cm, false))
			FUNC8(cm, default_event_names[temp_alrt]);

	/*
	 * Check whole charging duration and discharging duration
	 * after full-batt.
	 */
	} else if (!cm->emergency_stop && FUNC0(cm)) {
		FUNC2(cm->dev,
			"Charging/Discharging duration is out of range\n");
	/*
	 * Check dropped voltage of battery. If battery voltage is more
	 * dropped than fullbatt_vchkdrop_uV after fully charged state,
	 * charger-manager have to recharge battery.
	 */
	} else if (!cm->emergency_stop && FUNC5(cm) &&
			!cm->charger_enabled) {
		FUNC4(&cm->fullbatt_vchk_work.work);

	/*
	 * Check whether fully charged state to protect overcharge
	 * if charger-manager is charging for battery.
	 */
	} else if (!cm->emergency_stop && FUNC6(cm) &&
			cm->charger_enabled) {
		FUNC3(cm->dev, "EVENT_HANDLE: Battery Fully Charged\n");
		FUNC8(cm, default_event_names[CM_EVENT_BATT_FULL]);

		FUNC7(cm, false);

		FUNC4(&cm->fullbatt_vchk_work.work);
	} else {
		cm->emergency_stop = 0;
		if (FUNC5(cm)) {
			if (!FUNC7(cm, true))
				FUNC8(cm, "CHARGING");
		}
	}

	return true;
}