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
struct TYPE_2__ {int base; int npwm; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; } ;
struct ep93xx_pwm {TYPE_1__ chip; int /*<<< orphan*/  clk; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 struct ep93xx_pwm* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ep93xx_pwm_ops ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct ep93xx_pwm*) ; 
 int FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct ep93xx_pwm *ep93xx_pwm;
	struct resource *res;
	int ret;

	ep93xx_pwm = FUNC4(&pdev->dev, sizeof(*ep93xx_pwm), GFP_KERNEL);
	if (!ep93xx_pwm)
		return -ENOMEM;

	res = FUNC5(pdev, IORESOURCE_MEM, 0);
	ep93xx_pwm->base = FUNC3(&pdev->dev, res);
	if (FUNC0(ep93xx_pwm->base))
		return FUNC1(ep93xx_pwm->base);

	ep93xx_pwm->clk = FUNC2(&pdev->dev, "pwm_clk");
	if (FUNC0(ep93xx_pwm->clk))
		return FUNC1(ep93xx_pwm->clk);

	ep93xx_pwm->chip.dev = &pdev->dev;
	ep93xx_pwm->chip.ops = &ep93xx_pwm_ops;
	ep93xx_pwm->chip.base = -1;
	ep93xx_pwm->chip.npwm = 1;

	ret = FUNC7(&ep93xx_pwm->chip);
	if (ret < 0)
		return ret;

	FUNC6(pdev, ep93xx_pwm);
	return 0;
}