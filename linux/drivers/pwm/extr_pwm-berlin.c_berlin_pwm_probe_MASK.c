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
struct TYPE_2__ {int base; int npwm; int of_pwm_n_cells; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; } ;
struct berlin_pwm_chip {int /*<<< orphan*/  clk; TYPE_1__ chip; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  berlin_pwm_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct resource*) ; 
 struct berlin_pwm_chip* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_pwm_xlate_with_flags ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct berlin_pwm_chip*) ; 
 int FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct berlin_pwm_chip *pwm;
	struct resource *res;
	int ret;

	pwm = FUNC7(&pdev->dev, sizeof(*pwm), GFP_KERNEL);
	if (!pwm)
		return -ENOMEM;

	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	pwm->base = FUNC6(&pdev->dev, res);
	if (FUNC0(pwm->base))
		return FUNC1(pwm->base);

	pwm->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(pwm->clk))
		return FUNC1(pwm->clk);

	ret = FUNC3(pwm->clk);
	if (ret)
		return ret;

	pwm->chip.dev = &pdev->dev;
	pwm->chip.ops = &berlin_pwm_ops;
	pwm->chip.base = -1;
	pwm->chip.npwm = 4;
	pwm->chip.of_xlate = of_pwm_xlate_with_flags;
	pwm->chip.of_pwm_n_cells = 3;

	ret = FUNC10(&pwm->chip);
	if (ret < 0) {
		FUNC4(&pdev->dev, "failed to add PWM chip: %d\n", ret);
		FUNC2(pwm->clk);
		return ret;
	}

	FUNC9(pdev, pwm);

	return 0;
}