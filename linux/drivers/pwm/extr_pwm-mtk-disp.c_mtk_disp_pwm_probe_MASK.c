#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int base; int npwm; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; } ;
struct mtk_disp_pwm {void* clk_main; void* clk_mm; TYPE_2__* data; TYPE_1__ chip; void* base; } ;
struct TYPE_4__ {int /*<<< orphan*/  con0_sel; int /*<<< orphan*/  con0; int /*<<< orphan*/  bls_debug_mask; int /*<<< orphan*/  bls_debug; int /*<<< orphan*/  has_commit; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,struct resource*) ; 
 struct mtk_disp_pwm* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mtk_disp_pwm_ops ; 
 int /*<<< orphan*/  FUNC8 (struct mtk_disp_pwm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct mtk_disp_pwm*) ; 
 int FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct mtk_disp_pwm *mdp;
	struct resource *r;
	int ret;

	mdp = FUNC7(&pdev->dev, sizeof(*mdp), GFP_KERNEL);
	if (!mdp)
		return -ENOMEM;

	mdp->data = FUNC9(&pdev->dev);

	r = FUNC10(pdev, IORESOURCE_MEM, 0);
	mdp->base = FUNC6(&pdev->dev, r);
	if (FUNC0(mdp->base))
		return FUNC1(mdp->base);

	mdp->clk_main = FUNC5(&pdev->dev, "main");
	if (FUNC0(mdp->clk_main))
		return FUNC1(mdp->clk_main);

	mdp->clk_mm = FUNC5(&pdev->dev, "mm");
	if (FUNC0(mdp->clk_mm))
		return FUNC1(mdp->clk_mm);

	ret = FUNC2(mdp->clk_main);
	if (ret < 0)
		return ret;

	ret = FUNC2(mdp->clk_mm);
	if (ret < 0)
		goto disable_clk_main;

	mdp->chip.dev = &pdev->dev;
	mdp->chip.ops = &mtk_disp_pwm_ops;
	mdp->chip.base = -1;
	mdp->chip.npwm = 1;

	ret = FUNC12(&mdp->chip);
	if (ret < 0) {
		FUNC4(&pdev->dev, "pwmchip_add() failed: %d\n", ret);
		goto disable_clk_mm;
	}

	FUNC11(pdev, mdp);

	/*
	 * For MT2701, disable double buffer before writing register
	 * and select manual mode and use PWM_PERIOD/PWM_HIGH_WIDTH.
	 */
	if (!mdp->data->has_commit) {
		FUNC8(mdp, mdp->data->bls_debug,
					 mdp->data->bls_debug_mask,
					 mdp->data->bls_debug_mask);
		FUNC8(mdp, mdp->data->con0,
					 mdp->data->con0_sel,
					 mdp->data->con0_sel);
	}

	return 0;

disable_clk_mm:
	FUNC3(mdp->clk_mm);
disable_clk_main:
	FUNC3(mdp->clk_main);
	return ret;
}