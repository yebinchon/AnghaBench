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
struct TYPE_2__ {int /*<<< orphan*/  update_mode_before_suspend; int /*<<< orphan*/  sys_ck; } ;

/* Variables and functions */
 int /*<<< orphan*/  HWA742_PLL_DIV_REG ; 
 int /*<<< orphan*/  HWA742_POWER_SAVE ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ hwa742 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void)
{
	FUNC0(hwa742.sys_ck);

	/* Disable sleep mode */
	FUNC3(HWA742_POWER_SAVE, 0);
	while (1) {
		/* Loop until PLL output is stabilized */
		if (FUNC1(HWA742_PLL_DIV_REG) & (1 << 7))
			break;
		FUNC6(TASK_UNINTERRUPTIBLE);
		FUNC5(FUNC4(5));
	}
	FUNC2(hwa742.update_mode_before_suspend);
}