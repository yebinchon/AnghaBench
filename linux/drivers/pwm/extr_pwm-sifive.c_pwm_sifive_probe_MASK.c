#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  notifier_call; } ;
struct pwm_chip {int of_pwm_n_cells; int base; int npwm; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/ * ops; struct device* dev; } ;
struct pwm_sifive_ddata {int /*<<< orphan*/  clk; TYPE_1__ notifier; int /*<<< orphan*/  regs; struct pwm_chip chip; int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,struct resource*) ; 
 struct pwm_sifive_ddata* FUNC10 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_pwm_xlate_with_flags ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct pwm_sifive_ddata*) ; 
 int /*<<< orphan*/  pwm_sifive_clock_notifier ; 
 int /*<<< orphan*/  pwm_sifive_ops ; 
 int FUNC14 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct pwm_sifive_ddata *ddata;
	struct pwm_chip *chip;
	struct resource *res;
	int ret;

	ddata = FUNC10(dev, sizeof(*ddata), GFP_KERNEL);
	if (!ddata)
		return -ENOMEM;

	FUNC11(&ddata->lock);
	chip = &ddata->chip;
	chip->dev = dev;
	chip->ops = &pwm_sifive_ops;
	chip->of_xlate = of_pwm_xlate_with_flags;
	chip->of_pwm_n_cells = 3;
	chip->base = -1;
	chip->npwm = 4;

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	ddata->regs = FUNC9(dev, res);
	if (FUNC0(ddata->regs))
		return FUNC1(ddata->regs);

	ddata->clk = FUNC8(dev, NULL);
	if (FUNC0(ddata->clk)) {
		if (FUNC1(ddata->clk) != -EPROBE_DEFER)
			FUNC7(dev, "Unable to find controller clock\n");
		return FUNC1(ddata->clk);
	}

	ret = FUNC5(ddata->clk);
	if (ret) {
		FUNC7(dev, "failed to enable clock for pwm: %d\n", ret);
		return ret;
	}

	/* Watch for changes to underlying clock frequency */
	ddata->notifier.notifier_call = pwm_sifive_clock_notifier;
	ret = FUNC3(ddata->clk, &ddata->notifier);
	if (ret) {
		FUNC7(dev, "failed to register clock notifier: %d\n", ret);
		goto disable_clk;
	}

	ret = FUNC14(chip);
	if (ret < 0) {
		FUNC7(dev, "cannot register PWM: %d\n", ret);
		goto unregister_clk;
	}

	FUNC13(pdev, ddata);
	FUNC6(dev, "SiFive PWM chip registered %d PWMs\n", chip->npwm);

	return 0;

unregister_clk:
	FUNC4(ddata->clk, &ddata->notifier);
disable_clk:
	FUNC2(ddata->clk);

	return ret;
}