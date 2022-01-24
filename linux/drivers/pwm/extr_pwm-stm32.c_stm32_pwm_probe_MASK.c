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
struct stm32_timers {int /*<<< orphan*/  max_arr; int /*<<< orphan*/  clk; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int of_pwm_n_cells; int base; int /*<<< orphan*/  npwm; int /*<<< orphan*/ * ops; struct device* dev; int /*<<< orphan*/  of_xlate; } ;
struct stm32_pwm {TYPE_1__ chip; int /*<<< orphan*/  clk; int /*<<< orphan*/  regmap; int /*<<< orphan*/  max_arr; int /*<<< orphan*/  lock; } ;
struct device {int /*<<< orphan*/  parent; struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct stm32_timers* FUNC0 (int /*<<< orphan*/ ) ; 
 struct stm32_pwm* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_pwm_xlate_with_flags ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,struct stm32_pwm*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (struct stm32_pwm*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct stm32_pwm*) ; 
 int /*<<< orphan*/  FUNC7 (struct stm32_pwm*) ; 
 int /*<<< orphan*/  stm32pwm_ops ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct stm32_timers *ddata = FUNC0(pdev->dev.parent);
	struct stm32_pwm *priv;
	int ret;

	priv = FUNC1(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC2(&priv->lock);
	priv->regmap = ddata->regmap;
	priv->clk = ddata->clk;
	priv->max_arr = ddata->max_arr;
	priv->chip.of_xlate = of_pwm_xlate_with_flags;
	priv->chip.of_pwm_n_cells = 3;

	if (!priv->regmap || !priv->clk)
		return -EINVAL;

	ret = FUNC5(priv, np);
	if (ret)
		return ret;

	FUNC7(priv);

	priv->chip.base = -1;
	priv->chip.dev = dev;
	priv->chip.ops = &stm32pwm_ops;
	priv->chip.npwm = FUNC6(priv);

	ret = FUNC4(&priv->chip);
	if (ret < 0)
		return ret;

	FUNC3(pdev, priv);

	return 0;
}