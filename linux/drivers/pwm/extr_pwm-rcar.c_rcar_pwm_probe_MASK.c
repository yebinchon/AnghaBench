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
struct TYPE_2__ {int base; int npwm; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; } ;
struct rcar_pwm_chip {TYPE_1__ chip; int /*<<< orphan*/  clk; int /*<<< orphan*/  base; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 struct rcar_pwm_chip* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct rcar_pwm_chip*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  rcar_pwm_ops ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct rcar_pwm_chip *rcar_pwm;
	struct resource *res;
	int ret;

	rcar_pwm = FUNC5(&pdev->dev, sizeof(*rcar_pwm), GFP_KERNEL);
	if (rcar_pwm == NULL)
		return -ENOMEM;

	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	rcar_pwm->base = FUNC4(&pdev->dev, res);
	if (FUNC0(rcar_pwm->base))
		return FUNC1(rcar_pwm->base);

	rcar_pwm->clk = FUNC3(&pdev->dev, NULL);
	if (FUNC0(rcar_pwm->clk)) {
		FUNC2(&pdev->dev, "cannot get clock\n");
		return FUNC1(rcar_pwm->clk);
	}

	FUNC7(pdev, rcar_pwm);

	rcar_pwm->chip.dev = &pdev->dev;
	rcar_pwm->chip.ops = &rcar_pwm_ops;
	rcar_pwm->chip.base = -1;
	rcar_pwm->chip.npwm = 1;

	ret = FUNC9(&rcar_pwm->chip);
	if (ret < 0) {
		FUNC2(&pdev->dev, "failed to register PWM chip: %d\n", ret);
		return ret;
	}

	FUNC8(&pdev->dev);

	return 0;
}