#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct reset_control {int dummy; } ;
typedef  struct reset_control regmap ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct meson_gx_pwrc_vpu {int /*<<< orphan*/  genpd; struct reset_control* vapb_clk; struct reset_control* vpu_clk; struct reset_control* rstc; struct reset_control* regmap_hhi; struct reset_control* regmap_ao; } ;
typedef  struct reset_control clk ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct reset_control*) ; 
 int FUNC1 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct reset_control* FUNC3 (TYPE_1__*,char*) ; 
 struct meson_gx_pwrc_vpu* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct reset_control* FUNC5 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct meson_gx_pwrc_vpu*,struct meson_gx_pwrc_vpu const*,int) ; 
 int FUNC7 (struct meson_gx_pwrc_vpu*) ; 
 int FUNC8 (struct meson_gx_pwrc_vpu*) ; 
 struct meson_gx_pwrc_vpu* FUNC9 (TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct meson_gx_pwrc_vpu*) ; 
 int /*<<< orphan*/  pm_domain_always_on_gov ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct reset_control* FUNC14 (int /*<<< orphan*/ ) ; 
 struct reset_control* FUNC15 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	const struct meson_gx_pwrc_vpu *vpu_pd_match;
	struct regmap *regmap_ao, *regmap_hhi;
	struct meson_gx_pwrc_vpu *vpu_pd;
	struct reset_control *rstc;
	struct clk *vpu_clk;
	struct clk *vapb_clk;
	bool powered_off;
	int ret;

	vpu_pd_match = FUNC9(&pdev->dev);
	if (!vpu_pd_match) {
		FUNC2(&pdev->dev, "failed to get match data\n");
		return -ENODEV;
	}

	vpu_pd = FUNC4(&pdev->dev, sizeof(*vpu_pd), GFP_KERNEL);
	if (!vpu_pd)
		return -ENOMEM;

	FUNC6(vpu_pd, vpu_pd_match, sizeof(*vpu_pd));

	regmap_ao = FUNC14(FUNC11(pdev->dev.of_node));
	if (FUNC0(regmap_ao)) {
		FUNC2(&pdev->dev, "failed to get regmap\n");
		return FUNC1(regmap_ao);
	}

	regmap_hhi = FUNC15(pdev->dev.of_node,
						     "amlogic,hhi-sysctrl");
	if (FUNC0(regmap_hhi)) {
		FUNC2(&pdev->dev, "failed to get HHI regmap\n");
		return FUNC1(regmap_hhi);
	}

	rstc = FUNC5(&pdev->dev, false, false);
	if (FUNC0(rstc)) {
		if (FUNC1(rstc) != -EPROBE_DEFER)
			FUNC2(&pdev->dev, "failed to get reset lines\n");
		return FUNC1(rstc);
	}

	vpu_clk = FUNC3(&pdev->dev, "vpu");
	if (FUNC0(vpu_clk)) {
		FUNC2(&pdev->dev, "vpu clock request failed\n");
		return FUNC1(vpu_clk);
	}

	vapb_clk = FUNC3(&pdev->dev, "vapb");
	if (FUNC0(vapb_clk)) {
		FUNC2(&pdev->dev, "vapb clock request failed\n");
		return FUNC1(vapb_clk);
	}

	vpu_pd->regmap_ao = regmap_ao;
	vpu_pd->regmap_hhi = regmap_hhi;
	vpu_pd->rstc = rstc;
	vpu_pd->vpu_clk = vpu_clk;
	vpu_pd->vapb_clk = vapb_clk;

	FUNC12(pdev, vpu_pd);

	powered_off = FUNC7(vpu_pd);

	/* If already powered, sync the clock states */
	if (!powered_off) {
		ret = FUNC8(vpu_pd);
		if (ret)
			return ret;
	}

	FUNC13(&vpu_pd->genpd, &pm_domain_always_on_gov,
		      powered_off);

	return FUNC10(pdev->dev.of_node,
					    &vpu_pd->genpd);
}