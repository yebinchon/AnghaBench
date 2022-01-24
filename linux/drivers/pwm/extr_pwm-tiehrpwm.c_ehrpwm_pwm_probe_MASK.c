#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_9__ {struct TYPE_9__* parent; struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_8__ {int of_pwm_n_cells; int base; int /*<<< orphan*/  npwm; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/ * ops; TYPE_2__* dev; } ;
struct ehrpwm_pwm_chip {struct clk* tbclk; TYPE_1__ chip; struct clk* mmio_base; int /*<<< orphan*/  clk_rate; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  NUM_PWM_CHANNEL ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 void* FUNC7 (TYPE_2__*,char*) ; 
 struct clk* FUNC8 (TYPE_2__*,struct resource*) ; 
 struct ehrpwm_pwm_chip* FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ehrpwm_pwm_ops ; 
 scalar_t__ FUNC10 (struct device_node*,char*) ; 
 int /*<<< orphan*/  of_pwm_xlate_with_flags ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct ehrpwm_pwm_chip*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int FUNC14 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct ehrpwm_pwm_chip *pc;
	struct resource *r;
	struct clk *clk;
	int ret;

	pc = FUNC9(&pdev->dev, sizeof(*pc), GFP_KERNEL);
	if (!pc)
		return -ENOMEM;

	clk = FUNC7(&pdev->dev, "fck");
	if (FUNC0(clk)) {
		if (FUNC10(np, "ti,am33xx-ecap")) {
			FUNC6(&pdev->dev, "Binding is obsolete.\n");
			clk = FUNC7(pdev->dev.parent, "fck");
		}
	}

	if (FUNC0(clk)) {
		FUNC5(&pdev->dev, "failed to get clock\n");
		return FUNC1(clk);
	}

	pc->clk_rate = FUNC2(clk);
	if (!pc->clk_rate) {
		FUNC5(&pdev->dev, "failed to get clock rate\n");
		return -EINVAL;
	}

	pc->chip.dev = &pdev->dev;
	pc->chip.ops = &ehrpwm_pwm_ops;
	pc->chip.of_xlate = of_pwm_xlate_with_flags;
	pc->chip.of_pwm_n_cells = 3;
	pc->chip.base = -1;
	pc->chip.npwm = NUM_PWM_CHANNEL;

	r = FUNC11(pdev, IORESOURCE_MEM, 0);
	pc->mmio_base = FUNC8(&pdev->dev, r);
	if (FUNC0(pc->mmio_base))
		return FUNC1(pc->mmio_base);

	/* Acquire tbclk for Time Base EHRPWM submodule */
	pc->tbclk = FUNC7(&pdev->dev, "tbclk");
	if (FUNC0(pc->tbclk)) {
		FUNC5(&pdev->dev, "Failed to get tbclk\n");
		return FUNC1(pc->tbclk);
	}

	ret = FUNC3(pc->tbclk);
	if (ret < 0) {
		FUNC5(&pdev->dev, "clk_prepare() failed: %d\n", ret);
		return ret;
	}

	ret = FUNC14(&pc->chip);
	if (ret < 0) {
		FUNC5(&pdev->dev, "pwmchip_add() failed: %d\n", ret);
		goto err_clk_unprepare;
	}

	FUNC12(pdev, pc);
	FUNC13(&pdev->dev);

	return 0;

err_clk_unprepare:
	FUNC4(pc->tbclk);

	return ret;
}