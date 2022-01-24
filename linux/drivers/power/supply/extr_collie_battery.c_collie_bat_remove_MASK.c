#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ucb1x00_dev {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  psy; } ;
struct TYPE_4__ {int /*<<< orphan*/  psy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  COLLIE_GPIO_CO ; 
 int /*<<< orphan*/  bat_work ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__ collie_bat_bu ; 
 TYPE_1__ collie_bat_main ; 
 int /*<<< orphan*/  collie_batt_gpios ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ucb1x00_dev *dev)
{
	FUNC2(FUNC4(COLLIE_GPIO_CO), &collie_bat_main);

	FUNC5(collie_bat_bu.psy);
	FUNC5(collie_bat_main.psy);

	/*
	 * Now cancel the bat_work.  We won't get any more schedules,
	 * since all sources (isr and external_power_changed) are
	 * unregistered now.
	 */
	FUNC1(&bat_work);
	FUNC3(collie_batt_gpios, FUNC0(collie_batt_gpios));
}