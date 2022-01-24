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
struct thermal_zone_device {int dummy; } ;
struct platform_device {int dummy; } ;
struct exynos_tmu_data {unsigned int ntrip; scalar_t__ base; struct thermal_zone_device* tzd; } ;

/* Variables and functions */
 unsigned int EXYNOS5433_PD_DET_EN ; 
 scalar_t__ EXYNOS5433_TMU_PD_DET_EN ; 
 scalar_t__ EXYNOS5433_TMU_REG_INTEN ; 
 unsigned int EXYNOS7_TMU_INTEN_RISE0_SHIFT ; 
 int EXYNOS_TMU_CORE_EN_SHIFT ; 
 unsigned int EXYNOS_TMU_INTEN_FALL0_SHIFT ; 
 scalar_t__ EXYNOS_TMU_REG_CONTROL ; 
 unsigned int FUNC0 (struct exynos_tmu_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct thermal_zone_device*,unsigned int) ; 
 struct exynos_tmu_data* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct platform_device *pdev, bool on)
{
	struct exynos_tmu_data *data = FUNC2(pdev);
	struct thermal_zone_device *tz = data->tzd;
	unsigned int con, interrupt_en = 0, pd_det_en, i;

	con = FUNC0(data, FUNC3(data->base + EXYNOS_TMU_REG_CONTROL));

	if (on) {
		for (i = 0; i < data->ntrip; i++) {
			if (!FUNC1(tz, i))
				continue;

			interrupt_en |=
				(1 << (EXYNOS7_TMU_INTEN_RISE0_SHIFT + i));
		}

		interrupt_en |=
			interrupt_en << EXYNOS_TMU_INTEN_FALL0_SHIFT;

		con |= (1 << EXYNOS_TMU_CORE_EN_SHIFT);
	} else
		con &= ~(1 << EXYNOS_TMU_CORE_EN_SHIFT);

	pd_det_en = on ? EXYNOS5433_PD_DET_EN : 0;

	FUNC4(pd_det_en, data->base + EXYNOS5433_TMU_PD_DET_EN);
	FUNC4(interrupt_en, data->base + EXYNOS5433_TMU_REG_INTEN);
	FUNC4(con, data->base + EXYNOS_TMU_REG_CONTROL);
}