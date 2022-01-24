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
struct meson_gx_pwrc_vpu {int /*<<< orphan*/  rstc; int /*<<< orphan*/  regmap_ao; int /*<<< orphan*/  regmap_hhi; } ;
struct generic_pm_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AO_RTI_GEN_PWR_SLEEP0 ; 
 int FUNC0 (int) ; 
 int GEN_PWR_VPU_HDMI ; 
 int GEN_PWR_VPU_HDMI_ISO ; 
 int /*<<< orphan*/  HHI_MEM_PD_REG0 ; 
 int /*<<< orphan*/  HHI_VPU_MEM_PD_REG0 ; 
 int /*<<< orphan*/  HHI_VPU_MEM_PD_REG1 ; 
 struct meson_gx_pwrc_vpu* FUNC1 (struct generic_pm_domain*) ; 
 int FUNC2 (struct meson_gx_pwrc_vpu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct generic_pm_domain *genpd)
{
	struct meson_gx_pwrc_vpu *pd = FUNC1(genpd);
	int ret;
	int i;

	FUNC3(pd->regmap_ao, AO_RTI_GEN_PWR_SLEEP0,
			   GEN_PWR_VPU_HDMI, 0);
	FUNC6(20);

	/* Power Up Memories */
	for (i = 0; i < 32; i += 2) {
		FUNC3(pd->regmap_hhi, HHI_VPU_MEM_PD_REG0,
				   0x3 << i, 0);
		FUNC6(5);
	}

	for (i = 0; i < 32; i += 2) {
		FUNC3(pd->regmap_hhi, HHI_VPU_MEM_PD_REG1,
				   0x3 << i, 0);
		FUNC6(5);
	}

	for (i = 8; i < 16; i++) {
		FUNC3(pd->regmap_hhi, HHI_MEM_PD_REG0,
				   FUNC0(i), 0);
		FUNC6(5);
	}
	FUNC6(20);

	ret = FUNC4(pd->rstc);
	if (ret)
		return ret;

	FUNC3(pd->regmap_ao, AO_RTI_GEN_PWR_SLEEP0,
			   GEN_PWR_VPU_HDMI_ISO, 0);

	ret = FUNC5(pd->rstc);
	if (ret)
		return ret;

	ret = FUNC2(pd);
	if (ret)
		return ret;

	return 0;
}