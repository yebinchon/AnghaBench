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
struct TYPE_3__ {int base; int /*<<< orphan*/  npwm; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; } ;
struct tegra_pwm_chip {int /*<<< orphan*/  rst; TYPE_1__ chip; TYPE_2__* soc; int /*<<< orphan*/  clk; int /*<<< orphan*/  clk_rate; int /*<<< orphan*/  regs; int /*<<< orphan*/ * dev; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  max_frequency; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct resource*) ; 
 struct tegra_pwm_chip* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct tegra_pwm_chip*) ; 
 int FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tegra_pwm_ops ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct tegra_pwm_chip *pwm;
	struct resource *r;
	int ret;

	pwm = FUNC7(&pdev->dev, sizeof(*pwm), GFP_KERNEL);
	if (!pwm)
		return -ENOMEM;

	pwm->soc = FUNC9(&pdev->dev);
	pwm->dev = &pdev->dev;

	r = FUNC10(pdev, IORESOURCE_MEM, 0);
	pwm->regs = FUNC6(&pdev->dev, r);
	if (FUNC0(pwm->regs))
		return FUNC1(pwm->regs);

	FUNC11(pdev, pwm);

	pwm->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(pwm->clk))
		return FUNC1(pwm->clk);

	/* Set maximum frequency of the IP */
	ret = FUNC3(pwm->clk, pwm->soc->max_frequency);
	if (ret < 0) {
		FUNC4(&pdev->dev, "Failed to set max frequency: %d\n", ret);
		return ret;
	}

	/*
	 * The requested and configured frequency may differ due to
	 * clock register resolutions. Get the configured frequency
	 * so that PWM period can be calculated more accurately.
	 */
	pwm->clk_rate = FUNC2(pwm->clk);

	pwm->rst = FUNC8(&pdev->dev, "pwm");
	if (FUNC0(pwm->rst)) {
		ret = FUNC1(pwm->rst);
		FUNC4(&pdev->dev, "Reset control is not found: %d\n", ret);
		return ret;
	}

	FUNC14(pwm->rst);

	pwm->chip.dev = &pdev->dev;
	pwm->chip.ops = &tegra_pwm_ops;
	pwm->chip.base = -1;
	pwm->chip.npwm = pwm->soc->num_channels;

	ret = FUNC12(&pwm->chip);
	if (ret < 0) {
		FUNC4(&pdev->dev, "pwmchip_add() failed: %d\n", ret);
		FUNC13(pwm->rst);
		return ret;
	}

	return 0;
}