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
struct TYPE_3__ {int base; int of_pwm_n_cells; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/  npwm; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; } ;
struct sun4i_pwm_chip {TYPE_1__ chip; int /*<<< orphan*/  ctrl_lock; TYPE_2__* data; int /*<<< orphan*/  clk; int /*<<< orphan*/  base; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  npwm; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 struct sun4i_pwm_chip* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_pwm_xlate_with_flags ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct sun4i_pwm_chip*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sun4i_pwm_ops ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct sun4i_pwm_chip *pwm;
	struct resource *res;
	int ret;

	pwm = FUNC5(&pdev->dev, sizeof(*pwm), GFP_KERNEL);
	if (!pwm)
		return -ENOMEM;

	pwm->data = FUNC6(&pdev->dev);
	if (!pwm->data)
		return -ENODEV;

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	pwm->base = FUNC4(&pdev->dev, res);
	if (FUNC0(pwm->base))
		return FUNC1(pwm->base);

	pwm->clk = FUNC3(&pdev->dev, NULL);
	if (FUNC0(pwm->clk))
		return FUNC1(pwm->clk);

	pwm->chip.dev = &pdev->dev;
	pwm->chip.ops = &sun4i_pwm_ops;
	pwm->chip.base = -1;
	pwm->chip.npwm = pwm->data->npwm;
	pwm->chip.of_xlate = of_pwm_xlate_with_flags;
	pwm->chip.of_pwm_n_cells = 3;

	FUNC10(&pwm->ctrl_lock);

	ret = FUNC9(&pwm->chip);
	if (ret < 0) {
		FUNC2(&pdev->dev, "failed to add PWM chip: %d\n", ret);
		return ret;
	}

	FUNC8(pdev, pwm);

	return 0;
}