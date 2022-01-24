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

/* Variables and functions */
 int /*<<< orphan*/  EXYNOS5_AUTO_WDTRESET_DISABLE ; 
 int /*<<< orphan*/  EXYNOS5_MASK_WDTRESET_REQUEST ; 
 unsigned int EXYNOS5_SYS_WDTRESET ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	unsigned int value;
	/*
	 * When SYS_WDTRESET is set, watchdog timer reset request
	 * is ignored by power management unit.
	 */
	value = FUNC0(EXYNOS5_AUTO_WDTRESET_DISABLE);
	value &= ~EXYNOS5_SYS_WDTRESET;
	FUNC1(value, EXYNOS5_AUTO_WDTRESET_DISABLE);

	value = FUNC0(EXYNOS5_MASK_WDTRESET_REQUEST);
	value &= ~EXYNOS5_SYS_WDTRESET;
	FUNC1(value, EXYNOS5_MASK_WDTRESET_REQUEST);
}