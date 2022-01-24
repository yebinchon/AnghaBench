#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int force_full; scalar_t__ fully_charged; int /*<<< orphan*/  charging; scalar_t__ low_bat; } ;
struct TYPE_6__ {int enable; int* cap_to_scale; int disable_cap_level; int /*<<< orphan*/  scaled_cap; } ;
struct TYPE_7__ {scalar_t__ level; scalar_t__ prev_level; int prev_percent; TYPE_2__ cap_scale; int /*<<< orphan*/  permille; scalar_t__ mah; scalar_t__ prev_mah; } ;
struct ab8500_fg {int /*<<< orphan*/  fg_kobject; TYPE_4__ flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  fg_psy; TYPE_3__ bat_cap; TYPE_1__* bm; } ;
struct TYPE_5__ {scalar_t__ capacity_scaling; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ab8500_fg*) ; 
 scalar_t__ FUNC2 (struct ab8500_fg*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC7(struct ab8500_fg *di, bool init)
{
	bool changed = false;
	int percent = FUNC0(di->bat_cap.permille, 10);

	di->bat_cap.level = FUNC2(di);

	if (di->bat_cap.level != di->bat_cap.prev_level) {
		/*
		 * We do not allow reported capacity level to go up
		 * unless we're charging or if we're in init
		 */
		if (!(!di->flags.charging && di->bat_cap.level >
			di->bat_cap.prev_level) || init) {
			FUNC3(di->dev, "level changed from %d to %d\n",
				di->bat_cap.prev_level,
				di->bat_cap.level);
			di->bat_cap.prev_level = di->bat_cap.level;
			changed = true;
		} else {
			FUNC3(di->dev, "level not allowed to go up "
				"since no charger is connected: %d to %d\n",
				di->bat_cap.prev_level,
				di->bat_cap.level);
		}
	}

	/*
	 * If we have received the LOW_BAT IRQ, set capacity to 0 to initiate
	 * shutdown
	 */
	if (di->flags.low_bat) {
		FUNC3(di->dev, "Battery low, set capacity to 0\n");
		di->bat_cap.prev_percent = 0;
		di->bat_cap.permille = 0;
		percent = 0;
		di->bat_cap.prev_mah = 0;
		di->bat_cap.mah = 0;
		changed = true;
	} else if (di->flags.fully_charged) {
		/*
		 * We report 100% if algorithm reported fully charged
		 * and show 100% during maintenance charging (scaling).
		 */
		if (di->flags.force_full) {
			di->bat_cap.prev_percent = percent;
			di->bat_cap.prev_mah = di->bat_cap.mah;

			changed = true;

			if (!di->bat_cap.cap_scale.enable &&
						di->bm->capacity_scaling) {
				di->bat_cap.cap_scale.enable = true;
				di->bat_cap.cap_scale.cap_to_scale[0] = 100;
				di->bat_cap.cap_scale.cap_to_scale[1] =
						di->bat_cap.prev_percent;
				di->bat_cap.cap_scale.disable_cap_level = 100;
			}
		} else if (di->bat_cap.prev_percent != percent) {
			FUNC3(di->dev,
				"battery reported full "
				"but capacity dropping: %d\n",
				percent);
			di->bat_cap.prev_percent = percent;
			di->bat_cap.prev_mah = di->bat_cap.mah;

			changed = true;
		}
	} else if (di->bat_cap.prev_percent != percent) {
		if (percent == 0) {
			/*
			 * We will not report 0% unless we've got
			 * the LOW_BAT IRQ, no matter what the FG
			 * algorithm says.
			 */
			di->bat_cap.prev_percent = 1;
			percent = 1;

			changed = true;
		} else if (!(!di->flags.charging &&
			percent > di->bat_cap.prev_percent) || init) {
			/*
			 * We do not allow reported capacity to go up
			 * unless we're charging or if we're in init
			 */
			FUNC3(di->dev,
				"capacity changed from %d to %d (%d)\n",
				di->bat_cap.prev_percent,
				percent,
				di->bat_cap.permille);
			di->bat_cap.prev_percent = percent;
			di->bat_cap.prev_mah = di->bat_cap.mah;

			changed = true;
		} else {
			FUNC3(di->dev, "capacity not allowed to go up since "
				"no charger is connected: %d to %d (%d)\n",
				di->bat_cap.prev_percent,
				percent,
				di->bat_cap.permille);
		}
	}

	if (changed) {
		if (di->bm->capacity_scaling) {
			di->bat_cap.cap_scale.scaled_cap =
				FUNC1(di);

			FUNC4(di->dev, "capacity=%d (%d)\n",
				di->bat_cap.prev_percent,
				di->bat_cap.cap_scale.scaled_cap);
		}
		FUNC5(di->fg_psy);
		if (di->flags.fully_charged && di->flags.force_full) {
			FUNC3(di->dev, "Battery full, notifying.\n");
			di->flags.force_full = false;
			FUNC6(&di->fg_kobject, NULL, "charge_full");
		}
		FUNC6(&di->fg_kobject, NULL, "charge_now");
	}
}