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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int npwm; int of_pwm_n_cells; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; } ;
struct bcm2835_pwm {int /*<<< orphan*/  clk; TYPE_1__ chip; int /*<<< orphan*/  base; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bcm2835_pwm_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct resource*) ; 
 struct bcm2835_pwm* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_pwm_xlate_with_flags ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct bcm2835_pwm*) ; 
 int FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct bcm2835_pwm *pc;
	struct resource *res;
	int ret;

	pc = FUNC7(&pdev->dev, sizeof(*pc), GFP_KERNEL);
	if (!pc)
		return -ENOMEM;

	pc->dev = &pdev->dev;

	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	pc->base = FUNC6(&pdev->dev, res);
	if (FUNC0(pc->base))
		return FUNC1(pc->base);

	pc->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(pc->clk)) {
		ret = FUNC1(pc->clk);
		if (ret != -EPROBE_DEFER)
			FUNC4(&pdev->dev, "clock not found: %d\n", ret);

		return ret;
	}

	ret = FUNC3(pc->clk);
	if (ret)
		return ret;

	pc->chip.dev = &pdev->dev;
	pc->chip.ops = &bcm2835_pwm_ops;
	pc->chip.npwm = 2;
	pc->chip.of_xlate = of_pwm_xlate_with_flags;
	pc->chip.of_pwm_n_cells = 3;

	FUNC9(pdev, pc);

	ret = FUNC10(&pc->chip);
	if (ret < 0)
		goto add_fail;

	return 0;

add_fail:
	FUNC2(pc->clk);
	return ret;
}