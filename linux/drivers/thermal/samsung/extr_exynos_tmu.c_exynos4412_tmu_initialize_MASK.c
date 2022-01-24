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
struct platform_device {int dummy; } ;
struct exynos_tmu_data {scalar_t__ soc; scalar_t__ base; scalar_t__ base_second; } ;

/* Variables and functions */
 scalar_t__ EXYNOS_TMU_REG_TRIMINFO ; 
 scalar_t__ EXYNOS_TMU_TRIMINFO_CON1 ; 
 scalar_t__ EXYNOS_TMU_TRIMINFO_CON2 ; 
 unsigned int EXYNOS_TRIMINFO_RELOAD_ENABLE ; 
 scalar_t__ SOC_ARCH_EXYNOS3250 ; 
 scalar_t__ SOC_ARCH_EXYNOS4412 ; 
 scalar_t__ SOC_ARCH_EXYNOS5250 ; 
 scalar_t__ SOC_ARCH_EXYNOS5420_TRIMINFO ; 
 struct exynos_tmu_data* FUNC0 (struct platform_device*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct exynos_tmu_data*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct platform_device *pdev)
{
	struct exynos_tmu_data *data = FUNC0(pdev);
	unsigned int trim_info, ctrl;

	if (data->soc == SOC_ARCH_EXYNOS3250 ||
	    data->soc == SOC_ARCH_EXYNOS4412 ||
	    data->soc == SOC_ARCH_EXYNOS5250) {
		if (data->soc == SOC_ARCH_EXYNOS3250) {
			ctrl = FUNC1(data->base + EXYNOS_TMU_TRIMINFO_CON1);
			ctrl |= EXYNOS_TRIMINFO_RELOAD_ENABLE;
			FUNC3(ctrl, data->base + EXYNOS_TMU_TRIMINFO_CON1);
		}
		ctrl = FUNC1(data->base + EXYNOS_TMU_TRIMINFO_CON2);
		ctrl |= EXYNOS_TRIMINFO_RELOAD_ENABLE;
		FUNC3(ctrl, data->base + EXYNOS_TMU_TRIMINFO_CON2);
	}

	/* On exynos5420 the triminfo register is in the shared space */
	if (data->soc == SOC_ARCH_EXYNOS5420_TRIMINFO)
		trim_info = FUNC1(data->base_second + EXYNOS_TMU_REG_TRIMINFO);
	else
		trim_info = FUNC1(data->base + EXYNOS_TMU_REG_TRIMINFO);

	FUNC2(data, trim_info);
}