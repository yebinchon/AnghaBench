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
struct z2_charger {int bat_status; int /*<<< orphan*/  work_lock; TYPE_2__* batt_ps; struct z2_battery_info* info; } ;
struct z2_battery_info {scalar_t__ charge_gpio; } ;
struct TYPE_4__ {TYPE_1__* desc; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int POWER_SUPPLY_STATUS_CHARGING ; 
 int POWER_SUPPLY_STATUS_DISCHARGING ; 
 int POWER_SUPPLY_STATUS_UNKNOWN ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC5(struct z2_charger *charger)
{
	int old_status = charger->bat_status;
	struct z2_battery_info *info;

	info = charger->info;

	FUNC1(&charger->work_lock);

	charger->bat_status = (info->charge_gpio >= 0) ?
		(FUNC0(info->charge_gpio) ?
		POWER_SUPPLY_STATUS_CHARGING :
		POWER_SUPPLY_STATUS_DISCHARGING) :
		POWER_SUPPLY_STATUS_UNKNOWN;

	if (old_status != charger->bat_status) {
		FUNC4("%s: %i -> %i\n", charger->batt_ps->desc->name,
				old_status,
				charger->bat_status);
		FUNC3(charger->batt_ps);
	}

	FUNC2(&charger->work_lock);
}