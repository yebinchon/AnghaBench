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
struct wm97xx_batt_pdata {scalar_t__ charge_gpio; } ;
struct power_supply {TYPE_1__* desc; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int POWER_SUPPLY_STATUS_CHARGING ; 
 int POWER_SUPPLY_STATUS_DISCHARGING ; 
 int POWER_SUPPLY_STATUS_UNKNOWN ; 
 int bat_status ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct power_supply*) ; 
 struct wm97xx_batt_pdata* FUNC4 (struct power_supply*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  work_lock ; 

__attribute__((used)) static void FUNC6(struct power_supply *bat_ps)
{
	int old_status = bat_status;
	struct wm97xx_batt_pdata *pdata = FUNC4(bat_ps);

	FUNC1(&work_lock);

	bat_status = (pdata->charge_gpio >= 0) ?
			(FUNC0(pdata->charge_gpio) ?
			POWER_SUPPLY_STATUS_DISCHARGING :
			POWER_SUPPLY_STATUS_CHARGING) :
			POWER_SUPPLY_STATUS_UNKNOWN;

	if (old_status != bat_status) {
		FUNC5("%s: %i -> %i\n", bat_ps->desc->name, old_status,
					bat_status);
		FUNC3(bat_ps);
	}

	FUNC2(&work_lock);
}