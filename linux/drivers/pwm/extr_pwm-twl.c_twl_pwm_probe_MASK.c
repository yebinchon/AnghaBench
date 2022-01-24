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
struct TYPE_2__ {int base; int npwm; int /*<<< orphan*/ * dev; int /*<<< orphan*/ * ops; } ;
struct twl_pwm_chip {TYPE_1__ chip; int /*<<< orphan*/  mutex; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct twl_pwm_chip* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,struct twl_pwm_chip*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  twl4030_pwm_ops ; 
 int /*<<< orphan*/  twl6030_pwm_ops ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct twl_pwm_chip *twl;
	int ret;

	twl = FUNC0(&pdev->dev, sizeof(*twl), GFP_KERNEL);
	if (!twl)
		return -ENOMEM;

	if (FUNC4())
		twl->chip.ops = &twl4030_pwm_ops;
	else
		twl->chip.ops = &twl6030_pwm_ops;

	twl->chip.dev = &pdev->dev;
	twl->chip.base = -1;
	twl->chip.npwm = 2;

	FUNC1(&twl->mutex);

	ret = FUNC3(&twl->chip);
	if (ret < 0)
		return ret;

	FUNC2(pdev, twl);

	return 0;
}