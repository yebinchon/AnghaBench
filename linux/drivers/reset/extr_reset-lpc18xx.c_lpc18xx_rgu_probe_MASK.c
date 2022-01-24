#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct resource {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_9__ {int priority; int /*<<< orphan*/  notifier_call; } ;
struct TYPE_8__ {int nr_resets; int /*<<< orphan*/  of_node; int /*<<< orphan*/ * ops; int /*<<< orphan*/  owner; } ;
struct lpc18xx_rgu_data {int delay_us; void* clk_reg; void* clk_delay; TYPE_2__ restart_nb; TYPE_1__ rcdev; int /*<<< orphan*/  lock; void* base; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*) ; 
 void* FUNC8 (TYPE_3__*,char*) ; 
 void* FUNC9 (TYPE_3__*,struct resource*) ; 
 struct lpc18xx_rgu_data* FUNC10 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpc18xx_rgu_ops ; 
 int /*<<< orphan*/  lpc18xx_rgu_restart ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct lpc18xx_rgu_data*) ; 
 int FUNC13 (TYPE_2__*) ; 
 int FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct lpc18xx_rgu_data *rc;
	struct resource *res;
	u32 fcclk, firc;
	int ret;

	rc = FUNC10(&pdev->dev, sizeof(*rc), GFP_KERNEL);
	if (!rc)
		return -ENOMEM;

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	rc->base = FUNC9(&pdev->dev, res);
	if (FUNC1(rc->base))
		return FUNC2(rc->base);

	rc->clk_reg = FUNC8(&pdev->dev, "reg");
	if (FUNC1(rc->clk_reg)) {
		FUNC6(&pdev->dev, "reg clock not found\n");
		return FUNC2(rc->clk_reg);
	}

	rc->clk_delay = FUNC8(&pdev->dev, "delay");
	if (FUNC1(rc->clk_delay)) {
		FUNC6(&pdev->dev, "delay clock not found\n");
		return FUNC2(rc->clk_delay);
	}

	ret = FUNC5(rc->clk_reg);
	if (ret) {
		FUNC6(&pdev->dev, "unable to enable reg clock\n");
		return ret;
	}

	ret = FUNC5(rc->clk_delay);
	if (ret) {
		FUNC6(&pdev->dev, "unable to enable delay clock\n");
		goto dis_clk_reg;
	}

	fcclk = FUNC4(rc->clk_reg) / USEC_PER_SEC;
	firc = FUNC4(rc->clk_delay) / USEC_PER_SEC;
	if (fcclk == 0 || firc == 0)
		rc->delay_us = 2;
	else
		rc->delay_us = FUNC0(fcclk, firc * firc);

	FUNC15(&rc->lock);

	rc->rcdev.owner = THIS_MODULE;
	rc->rcdev.nr_resets = 64;
	rc->rcdev.ops = &lpc18xx_rgu_ops;
	rc->rcdev.of_node = pdev->dev.of_node;

	FUNC12(pdev, rc);

	ret = FUNC14(&rc->rcdev);
	if (ret) {
		FUNC6(&pdev->dev, "unable to register device\n");
		goto dis_clks;
	}

	rc->restart_nb.priority = 192,
	rc->restart_nb.notifier_call = lpc18xx_rgu_restart,
	ret = FUNC13(&rc->restart_nb);
	if (ret)
		FUNC7(&pdev->dev, "failed to register restart handler\n");

	return 0;

dis_clks:
	FUNC3(rc->clk_delay);
dis_clk_reg:
	FUNC3(rc->clk_reg);

	return ret;
}