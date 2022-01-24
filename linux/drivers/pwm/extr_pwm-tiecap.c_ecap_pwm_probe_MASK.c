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
struct TYPE_8__ {int of_pwm_n_cells; int base; int npwm; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/ * ops; TYPE_2__* dev; } ;
struct ecap_pwm_chip {TYPE_1__ chip; struct clk* mmio_base; int /*<<< orphan*/  clk_rate; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 struct clk* FUNC5 (TYPE_2__*,char*) ; 
 struct clk* FUNC6 (TYPE_2__*,struct resource*) ; 
 struct ecap_pwm_chip* FUNC7 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ecap_pwm_ops ; 
 scalar_t__ FUNC8 (struct device_node*,char*) ; 
 int /*<<< orphan*/  of_pwm_xlate_with_flags ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct ecap_pwm_chip*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct ecap_pwm_chip *pc;
	struct resource *r;
	struct clk *clk;
	int ret;

	pc = FUNC7(&pdev->dev, sizeof(*pc), GFP_KERNEL);
	if (!pc)
		return -ENOMEM;

	clk = FUNC5(&pdev->dev, "fck");
	if (FUNC0(clk)) {
		if (FUNC8(np, "ti,am33xx-ecap")) {
			FUNC4(&pdev->dev, "Binding is obsolete.\n");
			clk = FUNC5(pdev->dev.parent, "fck");
		}
	}

	if (FUNC0(clk)) {
		FUNC3(&pdev->dev, "failed to get clock\n");
		return FUNC1(clk);
	}

	pc->clk_rate = FUNC2(clk);
	if (!pc->clk_rate) {
		FUNC3(&pdev->dev, "failed to get clock rate\n");
		return -EINVAL;
	}

	pc->chip.dev = &pdev->dev;
	pc->chip.ops = &ecap_pwm_ops;
	pc->chip.of_xlate = of_pwm_xlate_with_flags;
	pc->chip.of_pwm_n_cells = 3;
	pc->chip.base = -1;
	pc->chip.npwm = 1;

	r = FUNC9(pdev, IORESOURCE_MEM, 0);
	pc->mmio_base = FUNC6(&pdev->dev, r);
	if (FUNC0(pc->mmio_base))
		return FUNC1(pc->mmio_base);

	ret = FUNC12(&pc->chip);
	if (ret < 0) {
		FUNC3(&pdev->dev, "pwmchip_add() failed: %d\n", ret);
		return ret;
	}

	FUNC10(pdev, pc);
	FUNC11(&pdev->dev);

	return 0;
}