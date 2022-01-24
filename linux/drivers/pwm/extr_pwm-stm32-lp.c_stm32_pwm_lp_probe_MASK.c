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
struct TYPE_3__ {int base; int npwm; int of_pwm_n_cells; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/ * ops; TYPE_2__* dev; } ;
struct stm32_pwm_lp {TYPE_1__ chip; int /*<<< orphan*/  clk; int /*<<< orphan*/  regmap; } ;
struct stm32_lptimer {int /*<<< orphan*/  clk; int /*<<< orphan*/  regmap; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct stm32_lptimer* FUNC0 (int /*<<< orphan*/ ) ; 
 struct stm32_pwm_lp* FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_pwm_xlate_with_flags ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,struct stm32_pwm_lp*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  stm32_pwm_lp_ops ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct stm32_lptimer *ddata = FUNC0(pdev->dev.parent);
	struct stm32_pwm_lp *priv;
	int ret;

	priv = FUNC1(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->regmap = ddata->regmap;
	priv->clk = ddata->clk;
	priv->chip.base = -1;
	priv->chip.dev = &pdev->dev;
	priv->chip.ops = &stm32_pwm_lp_ops;
	priv->chip.npwm = 1;
	priv->chip.of_xlate = of_pwm_xlate_with_flags;
	priv->chip.of_pwm_n_cells = 3;

	ret = FUNC3(&priv->chip);
	if (ret < 0)
		return ret;

	FUNC2(pdev, priv);

	return 0;
}