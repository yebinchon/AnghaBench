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
struct abx500_chargalg {int maintenance_chg; int /*<<< orphan*/  chargalg_psy; int /*<<< orphan*/  chargalg_wd_work; int /*<<< orphan*/  charge_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  POWER_SUPPLY_STATUS_NOT_CHARGING ; 
 int /*<<< orphan*/  FUNC0 (struct abx500_chargalg*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct abx500_chargalg*) ; 
 int /*<<< orphan*/  FUNC2 (struct abx500_chargalg*) ; 
 int /*<<< orphan*/  FUNC3 (struct abx500_chargalg*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct abx500_chargalg *di)
{
	FUNC0(di, false, 0, 0);
	FUNC3(di, false, 0, 0);
	FUNC2(di);
	FUNC1(di);
	di->charge_status = POWER_SUPPLY_STATUS_NOT_CHARGING;
	di->maintenance_chg = false;
	FUNC4(&di->chargalg_wd_work);
	FUNC5(di->chargalg_psy);
}