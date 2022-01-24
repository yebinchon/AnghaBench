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
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  of_node; int /*<<< orphan*/ * ops; int /*<<< orphan*/  nr_resets; } ;
struct meson_audio_arb_data {TYPE_1__ rstc; int /*<<< orphan*/  regs; int /*<<< orphan*/  clk; int /*<<< orphan*/  reset_bits; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARB_GENERAL_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  axg_audio_arb_reset_bits ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct resource*) ; 
 struct meson_audio_arb_data* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*) ; 
 int /*<<< orphan*/  meson_audio_arb_rstc_ops ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct meson_audio_arb_data*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct meson_audio_arb_data *arb;
	struct resource *res;
	int ret;

	arb = FUNC8(dev, sizeof(*arb), GFP_KERNEL);
	if (!arb)
		return -ENOMEM;
	FUNC12(pdev, arb);

	arb->clk = FUNC6(dev, NULL);
	if (FUNC2(arb->clk)) {
		if (FUNC3(arb->clk) != -EPROBE_DEFER)
			FUNC5(dev, "failed to get clock\n");
		return FUNC3(arb->clk);
	}

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	arb->regs = FUNC7(dev, res);
	if (FUNC2(arb->regs))
		return FUNC3(arb->regs);

	FUNC13(&arb->lock);
	arb->reset_bits = axg_audio_arb_reset_bits;
	arb->rstc.nr_resets = FUNC0(axg_audio_arb_reset_bits);
	arb->rstc.ops = &meson_audio_arb_rstc_ops;
	arb->rstc.of_node = dev->of_node;
	arb->rstc.owner = THIS_MODULE;

	/*
	 * Enable general :
	 * In the initial state, all memory interfaces are disabled
	 * and the general bit is on
	 */
	ret = FUNC4(arb->clk);
	if (ret) {
		FUNC5(dev, "failed to enable arb clock\n");
		return ret;
	}
	FUNC14(FUNC1(ARB_GENERAL_BIT), arb->regs);

	/* Register reset controller */
	ret = FUNC9(dev, &arb->rstc);
	if (ret) {
		FUNC5(dev, "failed to register arb reset controller\n");
		FUNC10(pdev);
	}

	return ret;
}