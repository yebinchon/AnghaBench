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
typedef  enum sys_powerdown { ____Placeholder_sys_powerdown } sys_powerdown ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int EXT_REGULATOR_COREBLK_DURATION ; 
 unsigned int EXT_REGULATOR_DURATION ; 
 int /*<<< orphan*/  EXYNOS3_EXT_REGULATOR_COREBLK_DURATION ; 
 int /*<<< orphan*/  EXYNOS3_EXT_REGULATOR_DURATION ; 
 unsigned int EXYNOS3_OPTION_USE_SC_COUNTER ; 
 unsigned int EXYNOS3_OPTION_USE_SC_FEEDBACK ; 
 int /*<<< orphan*/  EXYNOS3_XUSBXTI_DURATION ; 
 int /*<<< orphan*/  EXYNOS3_XXTI_DURATION ; 
 int SYS_SLEEP ; 
 unsigned int XUSBXTI_DURATION ; 
 unsigned int XXTI_DURATION ; 
 int /*<<< orphan*/ * exynos3250_list_feed ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(enum sys_powerdown mode)
{
	unsigned int i;
	unsigned int tmp;

	/* Enable only SC_FEEDBACK */
	for (i = 0; i < FUNC0(exynos3250_list_feed); i++) {
		tmp = FUNC1(exynos3250_list_feed[i]);
		tmp &= ~(EXYNOS3_OPTION_USE_SC_COUNTER);
		tmp |= EXYNOS3_OPTION_USE_SC_FEEDBACK;
		FUNC2(tmp, exynos3250_list_feed[i]);
	}

	if (mode != SYS_SLEEP)
		return;

	FUNC2(XUSBXTI_DURATION, EXYNOS3_XUSBXTI_DURATION);
	FUNC2(XXTI_DURATION, EXYNOS3_XXTI_DURATION);
	FUNC2(EXT_REGULATOR_DURATION, EXYNOS3_EXT_REGULATOR_DURATION);
	FUNC2(EXT_REGULATOR_COREBLK_DURATION,
		       EXYNOS3_EXT_REGULATOR_COREBLK_DURATION);
}