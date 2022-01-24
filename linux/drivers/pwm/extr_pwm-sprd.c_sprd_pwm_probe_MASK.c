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
struct TYPE_2__ {int base; int /*<<< orphan*/  npwm; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; } ;
struct sprd_pwm_chip {TYPE_1__ chip; int /*<<< orphan*/  num_pwms; int /*<<< orphan*/ * dev; int /*<<< orphan*/  base; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct sprd_pwm_chip* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct sprd_pwm_chip*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (struct sprd_pwm_chip*) ; 
 int /*<<< orphan*/  sprd_pwm_ops ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct sprd_pwm_chip *spc;
	int ret;

	spc = FUNC3(&pdev->dev, sizeof(*spc), GFP_KERNEL);
	if (!spc)
		return -ENOMEM;

	spc->base = FUNC4(pdev, 0);
	if (FUNC0(spc->base))
		return FUNC1(spc->base);

	spc->dev = &pdev->dev;
	FUNC5(pdev, spc);

	ret = FUNC7(spc);
	if (ret)
		return ret;

	spc->chip.dev = &pdev->dev;
	spc->chip.ops = &sprd_pwm_ops;
	spc->chip.base = -1;
	spc->chip.npwm = spc->num_pwms;

	ret = FUNC6(&spc->chip);
	if (ret)
		FUNC2(&pdev->dev, "failed to add PWM chip\n");

	return ret;
}