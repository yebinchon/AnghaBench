#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_6__ {int base; int /*<<< orphan*/  npwm; int /*<<< orphan*/ * ops; TYPE_3__* dev; } ;
struct mxs_pwm_chip {TYPE_1__ chip; int /*<<< orphan*/  base; int /*<<< orphan*/  clk; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 struct mxs_pwm_chip* FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mxs_pwm_ops ; 
 int FUNC6 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct mxs_pwm_chip*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct mxs_pwm_chip *mxs;
	int ret;

	mxs = FUNC4(&pdev->dev, sizeof(*mxs), GFP_KERNEL);
	if (!mxs)
		return -ENOMEM;

	mxs->base = FUNC5(pdev, 0);
	if (FUNC0(mxs->base))
		return FUNC1(mxs->base);

	mxs->clk = FUNC3(&pdev->dev, NULL);
	if (FUNC0(mxs->clk))
		return FUNC1(mxs->clk);

	mxs->chip.dev = &pdev->dev;
	mxs->chip.ops = &mxs_pwm_ops;
	mxs->chip.base = -1;

	ret = FUNC6(np, "fsl,pwm-number", &mxs->chip.npwm);
	if (ret < 0) {
		FUNC2(&pdev->dev, "failed to get pwm number: %d\n", ret);
		return ret;
	}

	ret = FUNC8(&mxs->chip);
	if (ret < 0) {
		FUNC2(&pdev->dev, "failed to add pwm chip %d\n", ret);
		return ret;
	}

	FUNC7(pdev, mxs);

	ret = FUNC10(mxs->base);
	if (ret)
		goto pwm_remove;

	return 0;

pwm_remove:
	FUNC9(&mxs->chip);
	return ret;
}