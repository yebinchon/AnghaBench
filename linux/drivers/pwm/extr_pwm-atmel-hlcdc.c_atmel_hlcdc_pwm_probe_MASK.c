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
struct device {TYPE_2__* parent; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int base; int npwm; int of_pwm_n_cells; int /*<<< orphan*/  of_xlate; struct device* dev; int /*<<< orphan*/ * ops; } ;
struct atmel_hlcdc_pwm {TYPE_1__ chip; struct atmel_hlcdc* hlcdc; int /*<<< orphan*/  errata; } ;
struct atmel_hlcdc {int /*<<< orphan*/  periph_clk; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PWM_POLARITY_INVERSED ; 
 int /*<<< orphan*/  atmel_hlcdc_dt_ids ; 
 int /*<<< orphan*/  atmel_hlcdc_pwm_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct atmel_hlcdc* FUNC2 (TYPE_2__*) ; 
 struct atmel_hlcdc_pwm* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_pwm_xlate_with_flags ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct atmel_hlcdc_pwm*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	const struct of_device_id *match;
	struct device *dev = &pdev->dev;
	struct atmel_hlcdc_pwm *chip;
	struct atmel_hlcdc *hlcdc;
	int ret;

	hlcdc = FUNC2(dev->parent);

	chip = FUNC3(dev, sizeof(*chip), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	ret = FUNC1(hlcdc->periph_clk);
	if (ret)
		return ret;

	match = FUNC4(atmel_hlcdc_dt_ids, dev->parent->of_node);
	if (match)
		chip->errata = match->data;

	chip->hlcdc = hlcdc;
	chip->chip.ops = &atmel_hlcdc_pwm_ops;
	chip->chip.dev = dev;
	chip->chip.base = -1;
	chip->chip.npwm = 1;
	chip->chip.of_xlate = of_pwm_xlate_with_flags;
	chip->chip.of_pwm_n_cells = 3;

	ret = FUNC6(&chip->chip, PWM_POLARITY_INVERSED);
	if (ret) {
		FUNC0(hlcdc->periph_clk);
		return ret;
	}

	FUNC5(pdev, chip);

	return 0;
}