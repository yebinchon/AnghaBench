#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  npwm; int /*<<< orphan*/ * ops; TYPE_2__* dev; } ;
struct lp3943_pwm {TYPE_1__ chip; struct lp3943* lp3943; int /*<<< orphan*/  pdata; } ;
struct lp3943 {int /*<<< orphan*/  pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_OF ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LP3943_NUM_PWMS ; 
 struct lp3943* FUNC1 (int /*<<< orphan*/ ) ; 
 struct lp3943_pwm* FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lp3943_pwm_ops ; 
 int FUNC3 (TYPE_2__*,struct lp3943_pwm*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct lp3943_pwm*) ; 
 int FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct lp3943 *lp3943 = FUNC1(pdev->dev.parent);
	struct lp3943_pwm *lp3943_pwm;
	int ret;

	lp3943_pwm = FUNC2(&pdev->dev, sizeof(*lp3943_pwm), GFP_KERNEL);
	if (!lp3943_pwm)
		return -ENOMEM;

	lp3943_pwm->pdata = lp3943->pdata;
	if (!lp3943_pwm->pdata) {
		if (FUNC0(CONFIG_OF))
			ret = FUNC3(&pdev->dev, lp3943_pwm);
		else
			ret = -ENODEV;

		if (ret)
			return ret;
	}

	lp3943_pwm->lp3943 = lp3943;
	lp3943_pwm->chip.dev = &pdev->dev;
	lp3943_pwm->chip.ops = &lp3943_pwm_ops;
	lp3943_pwm->chip.npwm = LP3943_NUM_PWMS;

	FUNC4(pdev, lp3943_pwm);

	return FUNC5(&lp3943_pwm->chip);
}