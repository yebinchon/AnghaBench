#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  psy; } ;
struct TYPE_5__ {int /*<<< orphan*/  psy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TOSA_GPIO_BAT0_CRG ; 
 int /*<<< orphan*/  TOSA_GPIO_BAT1_CRG ; 
 int /*<<< orphan*/  TOSA_GPIO_JACKET_DETECT ; 
 int /*<<< orphan*/  bat_work ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_3__ tosa_bat_bu ; 
 int /*<<< orphan*/  tosa_bat_gpios ; 
 TYPE_1__ tosa_bat_jacket ; 
 TYPE_1__ tosa_bat_main ; 

__attribute__((used)) static int FUNC6(struct platform_device *dev)
{
	FUNC2(FUNC4(TOSA_GPIO_JACKET_DETECT), &tosa_bat_jacket);
	FUNC2(FUNC4(TOSA_GPIO_BAT1_CRG), &tosa_bat_jacket);
	FUNC2(FUNC4(TOSA_GPIO_BAT0_CRG), &tosa_bat_main);

	FUNC5(tosa_bat_bu.psy);
	FUNC5(tosa_bat_jacket.psy);
	FUNC5(tosa_bat_main.psy);

	/*
	 * Now cancel the bat_work.  We won't get any more schedules,
	 * since all sources (isr and external_power_changed) are
	 * unregistered now.
	 */
	FUNC1(&bat_work);
	FUNC3(tosa_bat_gpios, FUNC0(tosa_bat_gpios));
	return 0;
}