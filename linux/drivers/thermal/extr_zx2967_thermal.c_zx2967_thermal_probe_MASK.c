#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct zx2967_thermal_priv {TYPE_2__* clk_topcrm; TYPE_2__* clk_apb; int /*<<< orphan*/ * dev; TYPE_2__* tzd; int /*<<< orphan*/  lock; TYPE_2__* regs; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {TYPE_1__* tzp; } ;
struct TYPE_9__ {scalar_t__ slope; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,struct resource*) ; 
 struct zx2967_thermal_priv* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct zx2967_thermal_priv*) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct zx2967_thermal_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  zx2967_of_thermal_ops ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct zx2967_thermal_priv *priv;
	struct resource *res;
	int ret;

	priv = FUNC7(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	priv->regs = FUNC6(&pdev->dev, res);
	if (FUNC0(priv->regs))
		return FUNC1(priv->regs);

	priv->clk_topcrm = FUNC5(&pdev->dev, "topcrm");
	if (FUNC0(priv->clk_topcrm)) {
		ret = FUNC1(priv->clk_topcrm);
		FUNC4(&pdev->dev, "failed to get topcrm clock: %d\n", ret);
		return ret;
	}

	ret = FUNC3(priv->clk_topcrm);
	if (ret) {
		FUNC4(&pdev->dev, "failed to enable topcrm clock: %d\n",
			ret);
		return ret;
	}

	priv->clk_apb = FUNC5(&pdev->dev, "apb");
	if (FUNC0(priv->clk_apb)) {
		ret = FUNC1(priv->clk_apb);
		FUNC4(&pdev->dev, "failed to get apb clock: %d\n", ret);
		goto disable_clk_topcrm;
	}

	ret = FUNC3(priv->clk_apb);
	if (ret) {
		FUNC4(&pdev->dev, "failed to enable apb clock: %d\n",
			ret);
		goto disable_clk_topcrm;
	}

	FUNC8(&priv->lock);
	priv->tzd = FUNC11(&pdev->dev,
					0, priv, &zx2967_of_thermal_ops);

	if (FUNC0(priv->tzd)) {
		ret = FUNC1(priv->tzd);
		FUNC4(&pdev->dev, "failed to register sensor: %d\n", ret);
		goto disable_clk_all;
	}

	if (priv->tzd->tzp->slope == 0) {
		FUNC12(&pdev->dev, priv->tzd);
		FUNC4(&pdev->dev, "coefficients of sensor is invalid\n");
		ret = -EINVAL;
		goto disable_clk_all;
	}

	priv->dev = &pdev->dev;
	FUNC10(pdev, priv);

	return 0;

disable_clk_all:
	FUNC2(priv->clk_apb);
disable_clk_topcrm:
	FUNC2(priv->clk_topcrm);
	return ret;
}