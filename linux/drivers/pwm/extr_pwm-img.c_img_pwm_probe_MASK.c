#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct resource {int dummy; } ;
struct TYPE_18__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct of_device_id {TYPE_1__* data; } ;
struct TYPE_17__ {int base; int /*<<< orphan*/  npwm; int /*<<< orphan*/ * ops; TYPE_3__* dev; } ;
struct img_pwm_chip {int max_period_ns; int min_period_ns; TYPE_2__ chip; TYPE_1__* data; void* pwm_clk; void* sys_clk; void* periph_regs; void* base; TYPE_3__* dev; } ;
struct TYPE_16__ {int max_timebase; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IMG_PWM_NPWM ; 
 int /*<<< orphan*/  IMG_PWM_PM_TIMEOUT ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int MIN_TMBASE_STEPS ; 
 scalar_t__ NSEC_PER_SEC ; 
 int FUNC1 (void*) ; 
 unsigned long FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,...) ; 
 void* FUNC4 (TYPE_3__*,char*) ; 
 void* FUNC5 (TYPE_3__*,struct resource*) ; 
 struct img_pwm_chip* FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,unsigned long) ; 
 int /*<<< orphan*/  img_pwm_of_match ; 
 int /*<<< orphan*/  img_pwm_ops ; 
 int FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 struct of_device_id* FUNC10 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct img_pwm_chip*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 int FUNC19 (TYPE_2__*) ; 
 void* FUNC20 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	int ret;
	u64 val;
	unsigned long clk_rate;
	struct resource *res;
	struct img_pwm_chip *pwm;
	const struct of_device_id *of_dev_id;

	pwm = FUNC6(&pdev->dev, sizeof(*pwm), GFP_KERNEL);
	if (!pwm)
		return -ENOMEM;

	pwm->dev = &pdev->dev;

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	pwm->base = FUNC5(&pdev->dev, res);
	if (FUNC0(pwm->base))
		return FUNC1(pwm->base);

	of_dev_id = FUNC10(img_pwm_of_match, &pdev->dev);
	if (!of_dev_id)
		return -ENODEV;
	pwm->data = of_dev_id->data;

	pwm->periph_regs = FUNC20(pdev->dev.of_node,
							   "img,cr-periph");
	if (FUNC0(pwm->periph_regs))
		return FUNC1(pwm->periph_regs);

	pwm->sys_clk = FUNC4(&pdev->dev, "sys");
	if (FUNC0(pwm->sys_clk)) {
		FUNC3(&pdev->dev, "failed to get system clock\n");
		return FUNC1(pwm->sys_clk);
	}

	pwm->pwm_clk = FUNC4(&pdev->dev, "pwm");
	if (FUNC0(pwm->pwm_clk)) {
		FUNC3(&pdev->dev, "failed to get pwm clock\n");
		return FUNC1(pwm->pwm_clk);
	}

	FUNC17(&pdev->dev, IMG_PWM_PM_TIMEOUT);
	FUNC18(&pdev->dev);
	FUNC15(&pdev->dev);
	if (!FUNC16(&pdev->dev)) {
		ret = FUNC8(&pdev->dev);
		if (ret)
			goto err_pm_disable;
	}

	clk_rate = FUNC2(pwm->pwm_clk);
	if (!clk_rate) {
		FUNC3(&pdev->dev, "pwm clock has no frequency\n");
		ret = -EINVAL;
		goto err_suspend;
	}

	/* The maximum input clock divider is 512 */
	val = (u64)NSEC_PER_SEC * 512 * pwm->data->max_timebase;
	FUNC7(val, clk_rate);
	pwm->max_period_ns = val;

	val = (u64)NSEC_PER_SEC * MIN_TMBASE_STEPS;
	FUNC7(val, clk_rate);
	pwm->min_period_ns = val;

	pwm->chip.dev = &pdev->dev;
	pwm->chip.ops = &img_pwm_ops;
	pwm->chip.base = -1;
	pwm->chip.npwm = IMG_PWM_NPWM;

	ret = FUNC19(&pwm->chip);
	if (ret < 0) {
		FUNC3(&pdev->dev, "pwmchip_add failed: %d\n", ret);
		goto err_suspend;
	}

	FUNC12(pdev, pwm);
	return 0;

err_suspend:
	if (!FUNC16(&pdev->dev))
		FUNC9(&pdev->dev);
err_pm_disable:
	FUNC13(&pdev->dev);
	FUNC14(&pdev->dev);
	return ret;
}