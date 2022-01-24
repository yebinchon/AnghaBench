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
struct sti_pwm_compat_data {int max_prescale; int max_pwm_cnt; unsigned int cpt_num_devs; scalar_t__ pwm_num_devs; int /*<<< orphan*/  reg_fields; } ;
struct TYPE_2__ {int base; int /*<<< orphan*/ * pwms; scalar_t__ npwm; int /*<<< orphan*/ * ops; struct device* dev; } ;
struct sti_pwm_chip {TYPE_1__ chip; void* cpt_clk; void* pwm_clk; struct sti_pwm_compat_data* cdata; int /*<<< orphan*/  sti_pwm_lock; scalar_t__ en_count; struct device* dev; void* regmap; void* mmio; } ;
struct sti_cpt_ddata {int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; } ;
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 void* FUNC5 (struct device*,struct resource*) ; 
 void* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct device*,void*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sti_pwm_chip*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 void* FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct sti_pwm_chip*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct sti_cpt_ddata*) ; 
 int FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  sti_pwm_interrupt ; 
 int /*<<< orphan*/  sti_pwm_ops ; 
 int FUNC17 (struct sti_pwm_chip*) ; 
 int /*<<< orphan*/  sti_pwm_regfields ; 
 int /*<<< orphan*/  sti_pwm_regmap_config ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct sti_pwm_compat_data *cdata;
	struct sti_pwm_chip *pc;
	struct resource *res;
	unsigned int i;
	int irq, ret;

	pc = FUNC6(dev, sizeof(*pc), GFP_KERNEL);
	if (!pc)
		return -ENOMEM;

	cdata = FUNC6(dev, sizeof(*cdata), GFP_KERNEL);
	if (!cdata)
		return -ENOMEM;

	res = FUNC13(pdev, IORESOURCE_MEM, 0);

	pc->mmio = FUNC5(dev, res);
	if (FUNC0(pc->mmio))
		return FUNC1(pc->mmio);

	pc->regmap = FUNC7(dev, pc->mmio,
					   &sti_pwm_regmap_config);
	if (FUNC0(pc->regmap))
		return FUNC1(pc->regmap);

	irq = FUNC12(pdev, 0);
	if (irq < 0)
		return irq;

	ret = FUNC8(&pdev->dev, irq, sti_pwm_interrupt, 0,
			       pdev->name, pc);
	if (ret < 0) {
		FUNC4(&pdev->dev, "Failed to request IRQ\n");
		return ret;
	}

	/*
	 * Setup PWM data with default values: some values could be replaced
	 * with specific ones provided from Device Tree.
	 */
	cdata->reg_fields = sti_pwm_regfields;
	cdata->max_prescale = 0xff;
	cdata->max_pwm_cnt = 255;
	cdata->pwm_num_devs = 0;
	cdata->cpt_num_devs = 0;

	pc->cdata = cdata;
	pc->dev = dev;
	pc->en_count = 0;
	FUNC10(&pc->sti_pwm_lock);

	ret = FUNC17(pc);
	if (ret)
		return ret;

	if (!cdata->pwm_num_devs)
		goto skip_pwm;

	pc->pwm_clk = FUNC11(dev->of_node, "pwm");
	if (FUNC0(pc->pwm_clk)) {
		FUNC4(dev, "failed to get PWM clock\n");
		return FUNC1(pc->pwm_clk);
	}

	ret = FUNC2(pc->pwm_clk);
	if (ret) {
		FUNC4(dev, "failed to prepare clock\n");
		return ret;
	}

skip_pwm:
	if (!cdata->cpt_num_devs)
		goto skip_cpt;

	pc->cpt_clk = FUNC11(dev->of_node, "capture");
	if (FUNC0(pc->cpt_clk)) {
		FUNC4(dev, "failed to get PWM capture clock\n");
		return FUNC1(pc->cpt_clk);
	}

	ret = FUNC2(pc->cpt_clk);
	if (ret) {
		FUNC4(dev, "failed to prepare clock\n");
		return ret;
	}

skip_cpt:
	pc->chip.dev = dev;
	pc->chip.ops = &sti_pwm_ops;
	pc->chip.base = -1;
	pc->chip.npwm = pc->cdata->pwm_num_devs;

	ret = FUNC16(&pc->chip);
	if (ret < 0) {
		FUNC3(pc->pwm_clk);
		FUNC3(pc->cpt_clk);
		return ret;
	}

	for (i = 0; i < cdata->cpt_num_devs; i++) {
		struct sti_cpt_ddata *ddata;

		ddata = FUNC6(dev, sizeof(*ddata), GFP_KERNEL);
		if (!ddata)
			return -ENOMEM;

		FUNC9(&ddata->wait);
		FUNC10(&ddata->lock);

		FUNC15(&pc->chip.pwms[i], ddata);
	}

	FUNC14(pdev, pc);

	return 0;
}