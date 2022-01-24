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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int DUR_WAIT_RESET ; 
 int /*<<< orphan*/  EXYNOS5420_ARM_COMMON_OPTION ; 
 int /*<<< orphan*/  EXYNOS5420_ARM_INTR_SPREAD_ENABLE ; 
 int /*<<< orphan*/  EXYNOS5420_ARM_INTR_SPREAD_USE_STANDBYWFI ; 
 unsigned int EXYNOS5420_ATB_ISP_ARM ; 
 unsigned int EXYNOS5420_ATB_KFC ; 
 int /*<<< orphan*/  EXYNOS5420_KFC_COMMON_OPTION ; 
 int /*<<< orphan*/  EXYNOS5420_LOGIC_RESET_DURATION3 ; 
 int /*<<< orphan*/  EXYNOS5420_LPI_MASK ; 
 int /*<<< orphan*/  EXYNOS5420_LPI_MASK1 ; 
 int /*<<< orphan*/  EXYNOS5420_UP_SCHEDULER ; 
 int EXYNOS5420_USE_STANDBY_WFI_ALL ; 
 unsigned int EXYNOS5_SKIP_DEACTIVATE_ACEACP_IN_PWDN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int EXYNOS_L2_USE_RETENTION ; 
 int /*<<< orphan*/  S5P_CENTRAL_SEQ_OPTION ; 
 int SPREAD_ENABLE ; 
 int SPREAD_USE_STANDWFI ; 
 int /*<<< orphan*/ * exynos5420_list_disable_pmu_reg ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
	unsigned int value;
	int i;

	/*
	 * Set the CMU_RESET, CMU_SYSCLK and CMU_CLKSTOP registers
	 * for local power blocks to Low initially as per Table 8-4:
	 * "System-Level Power-Down Configuration Registers".
	 */
	for (i = 0; i < FUNC0(exynos5420_list_disable_pmu_reg); i++)
		FUNC3(0, exynos5420_list_disable_pmu_reg[i]);

	/* Enable USE_STANDBY_WFI for all CORE */
	FUNC3(EXYNOS5420_USE_STANDBY_WFI_ALL, S5P_CENTRAL_SEQ_OPTION);

	value  = FUNC2(FUNC1(0));
	value &= ~EXYNOS_L2_USE_RETENTION;
	FUNC3(value, FUNC1(0));

	value = FUNC2(FUNC1(1));
	value &= ~EXYNOS_L2_USE_RETENTION;
	FUNC3(value, FUNC1(1));

	/*
	 * If L2_COMMON is turned off, clocks related to ATB async
	 * bridge are gated. Thus, when ISP power is gated, LPI
	 * may get stuck.
	 */
	value = FUNC2(EXYNOS5420_LPI_MASK);
	value |= EXYNOS5420_ATB_ISP_ARM;
	FUNC3(value, EXYNOS5420_LPI_MASK);

	value  = FUNC2(EXYNOS5420_LPI_MASK1);
	value |= EXYNOS5420_ATB_KFC;
	FUNC3(value, EXYNOS5420_LPI_MASK1);

	/* Prevent issue of new bus request from L2 memory */
	value = FUNC2(EXYNOS5420_ARM_COMMON_OPTION);
	value |= EXYNOS5_SKIP_DEACTIVATE_ACEACP_IN_PWDN;
	FUNC3(value, EXYNOS5420_ARM_COMMON_OPTION);

	value = FUNC2(EXYNOS5420_KFC_COMMON_OPTION);
	value |= EXYNOS5_SKIP_DEACTIVATE_ACEACP_IN_PWDN;
	FUNC3(value, EXYNOS5420_KFC_COMMON_OPTION);

	/* This setting is to reduce suspend/resume time */
	FUNC3(DUR_WAIT_RESET, EXYNOS5420_LOGIC_RESET_DURATION3);

	/* Serialized CPU wakeup of Eagle */
	FUNC3(SPREAD_ENABLE, EXYNOS5420_ARM_INTR_SPREAD_ENABLE);

	FUNC3(SPREAD_USE_STANDWFI,
			EXYNOS5420_ARM_INTR_SPREAD_USE_STANDBYWFI);

	FUNC3(0x1, EXYNOS5420_UP_SCHEDULER);

	FUNC4("EXYNOS5420 PMU initialized\n");
}