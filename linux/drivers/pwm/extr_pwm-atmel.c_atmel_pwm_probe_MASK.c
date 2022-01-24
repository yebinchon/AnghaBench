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
struct TYPE_2__ {int of_pwm_n_cells; int base; int npwm; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; } ;
struct atmel_pwm_chip {int /*<<< orphan*/  clk; TYPE_1__ chip; int /*<<< orphan*/  base; scalar_t__ updated_pwms; int /*<<< orphan*/  data; int /*<<< orphan*/  isr_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atmel_pwm_ops ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct resource*) ; 
 struct atmel_pwm_chip* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_pwm_xlate_with_flags ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct atmel_pwm_chip*) ; 
 int FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct atmel_pwm_chip *atmel_pwm;
	struct resource *res;
	int ret;

	atmel_pwm = FUNC7(&pdev->dev, sizeof(*atmel_pwm), GFP_KERNEL);
	if (!atmel_pwm)
		return -ENOMEM;

	FUNC8(&atmel_pwm->isr_lock);
	atmel_pwm->data = FUNC9(&pdev->dev);
	atmel_pwm->updated_pwms = 0;

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	atmel_pwm->base = FUNC6(&pdev->dev, res);
	if (FUNC0(atmel_pwm->base))
		return FUNC1(atmel_pwm->base);

	atmel_pwm->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(atmel_pwm->clk))
		return FUNC1(atmel_pwm->clk);

	ret = FUNC2(atmel_pwm->clk);
	if (ret) {
		FUNC4(&pdev->dev, "failed to prepare PWM clock\n");
		return ret;
	}

	atmel_pwm->chip.dev = &pdev->dev;
	atmel_pwm->chip.ops = &atmel_pwm_ops;
	atmel_pwm->chip.of_xlate = of_pwm_xlate_with_flags;
	atmel_pwm->chip.of_pwm_n_cells = 3;
	atmel_pwm->chip.base = -1;
	atmel_pwm->chip.npwm = 4;

	ret = FUNC12(&atmel_pwm->chip);
	if (ret < 0) {
		FUNC4(&pdev->dev, "failed to add PWM chip %d\n", ret);
		goto unprepare_clk;
	}

	FUNC11(pdev, atmel_pwm);

	return ret;

unprepare_clk:
	FUNC3(atmel_pwm->clk);
	return ret;
}