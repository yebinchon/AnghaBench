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
typedef  int u32 ;
struct qcom_wcnss {int /*<<< orphan*/  pmu_cfg; scalar_t__ use_48mhz_xo; } ;

/* Variables and functions */
 int WCNSS_PMU_GC_BUS_MUX_SEL_TOP ; 
 int WCNSS_PMU_IRIS_RESET ; 
 int WCNSS_PMU_IRIS_RESET_STS ; 
 int WCNSS_PMU_IRIS_XO_CFG ; 
 int WCNSS_PMU_IRIS_XO_CFG_STS ; 
 int WCNSS_PMU_IRIS_XO_EN ; 
 int WCNSS_PMU_XO_MODE_19p2 ; 
 int WCNSS_PMU_XO_MODE_48 ; 
 int WCNSS_PMU_XO_MODE_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct qcom_wcnss *wcnss)
{
	u32 val;

	/* Clear PMU cfg register */
	FUNC3(0, wcnss->pmu_cfg);

	val = WCNSS_PMU_GC_BUS_MUX_SEL_TOP | WCNSS_PMU_IRIS_XO_EN;
	FUNC3(val, wcnss->pmu_cfg);

	/* Clear XO_MODE */
	val &= ~WCNSS_PMU_XO_MODE_MASK;
	if (wcnss->use_48mhz_xo)
		val |= WCNSS_PMU_XO_MODE_48 << 1;
	else
		val |= WCNSS_PMU_XO_MODE_19p2 << 1;
	FUNC3(val, wcnss->pmu_cfg);

	/* Reset IRIS */
	val |= WCNSS_PMU_IRIS_RESET;
	FUNC3(val, wcnss->pmu_cfg);

	/* Wait for PMU.iris_reg_reset_sts */
	while (FUNC2(wcnss->pmu_cfg) & WCNSS_PMU_IRIS_RESET_STS)
		FUNC0();

	/* Clear IRIS reset */
	val &= ~WCNSS_PMU_IRIS_RESET;
	FUNC3(val, wcnss->pmu_cfg);

	/* Start IRIS XO configuration */
	val |= WCNSS_PMU_IRIS_XO_CFG;
	FUNC3(val, wcnss->pmu_cfg);

	/* Wait for XO configuration to finish */
	while (FUNC2(wcnss->pmu_cfg) & WCNSS_PMU_IRIS_XO_CFG_STS)
		FUNC0();

	/* Stop IRIS XO configuration */
	val &= ~WCNSS_PMU_GC_BUS_MUX_SEL_TOP;
	val &= ~WCNSS_PMU_IRIS_XO_CFG;
	FUNC3(val, wcnss->pmu_cfg);

	/* Add some delay for XO to settle */
	FUNC1(20);
}