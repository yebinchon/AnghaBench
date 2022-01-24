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
struct TYPE_2__ {int base; int npwm; int of_pwm_n_cells; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/ * dev; int /*<<< orphan*/ * ops; } ;
struct clps711x_chip {TYPE_1__ chip; int /*<<< orphan*/  lock; int /*<<< orphan*/  clk; int /*<<< orphan*/  pmpcon; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clps711x_pwm_ops ; 
 int /*<<< orphan*/  clps711x_pwm_xlate ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 struct clps711x_chip* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct clps711x_chip*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct clps711x_chip *priv;
	struct resource *res;

	priv = FUNC4(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	res = FUNC5(pdev, IORESOURCE_MEM, 0);
	priv->pmpcon = FUNC3(&pdev->dev, res);
	if (FUNC0(priv->pmpcon))
		return FUNC1(priv->pmpcon);

	priv->clk = FUNC2(&pdev->dev, NULL);
	if (FUNC0(priv->clk))
		return FUNC1(priv->clk);

	priv->chip.ops = &clps711x_pwm_ops;
	priv->chip.dev = &pdev->dev;
	priv->chip.base = -1;
	priv->chip.npwm = 2;
	priv->chip.of_xlate = clps711x_pwm_xlate;
	priv->chip.of_pwm_n_cells = 1;

	FUNC8(&priv->lock);

	FUNC6(pdev, priv);

	return FUNC7(&priv->chip);
}