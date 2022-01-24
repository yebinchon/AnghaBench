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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int base; int of_pwm_n_cells; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/  npwm; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; } ;
struct jz4740_pwm_chip {TYPE_1__ chip; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUM_PWM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct jz4740_pwm_chip* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jz4740_pwm_ops ; 
 int /*<<< orphan*/  of_pwm_xlate_with_flags ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct jz4740_pwm_chip*) ; 
 int FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct jz4740_pwm_chip *jz4740;

	jz4740 = FUNC3(&pdev->dev, sizeof(*jz4740), GFP_KERNEL);
	if (!jz4740)
		return -ENOMEM;

	jz4740->clk = FUNC2(&pdev->dev, "ext");
	if (FUNC0(jz4740->clk))
		return FUNC1(jz4740->clk);

	jz4740->chip.dev = &pdev->dev;
	jz4740->chip.ops = &jz4740_pwm_ops;
	jz4740->chip.npwm = NUM_PWM;
	jz4740->chip.base = -1;
	jz4740->chip.of_xlate = of_pwm_xlate_with_flags;
	jz4740->chip.of_pwm_n_cells = 3;

	FUNC4(pdev, jz4740);

	return FUNC5(&jz4740->chip);
}