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
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  as3722; } ;

/* Variables and functions */
 int /*<<< orphan*/  AS3722_POWER_OFF ; 
 int /*<<< orphan*/  AS3722_RESET_CONTROL_REG ; 
 TYPE_1__* as3722_pm_poweroff ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
	int ret;

	if (!as3722_pm_poweroff) {
		FUNC2("AS3722 poweroff is not initialised\n");
		return;
	}

	ret = FUNC0(as3722_pm_poweroff->as3722,
		AS3722_RESET_CONTROL_REG, AS3722_POWER_OFF, AS3722_POWER_OFF);
	if (ret < 0)
		FUNC1(as3722_pm_poweroff->dev,
			"RESET_CONTROL_REG update failed, %d\n", ret);
}