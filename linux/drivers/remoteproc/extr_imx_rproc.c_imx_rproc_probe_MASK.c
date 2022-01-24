#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct device {struct device_node* of_node; } ;
struct rproc {struct device dev; struct imx_rproc* priv; } ;
struct regmap_config {char* name; } ;
struct regmap {int dummy; } ;
struct platform_device {struct device dev; } ;
struct imx_rproc_dcfg {int dummy; } ;
struct imx_rproc {struct regmap* clk; struct device* dev; struct imx_rproc_dcfg const* dcfg; struct regmap* regmap; struct rproc* rproc; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*) ; 
 int FUNC3 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct rproc*) ; 
 struct regmap* FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct imx_rproc*,struct platform_device*) ; 
 int /*<<< orphan*/  imx_rproc_ops ; 
 struct imx_rproc_dcfg* FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,struct regmap*,struct regmap_config*) ; 
 int FUNC10 (struct rproc*) ; 
 struct rproc* FUNC11 (struct device*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (struct rproc*) ; 
 struct regmap* FUNC13 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct imx_rproc *priv;
	struct rproc *rproc;
	struct regmap_config config = { .name = "imx-rproc" };
	const struct imx_rproc_dcfg *dcfg;
	struct regmap *regmap;
	int ret;

	regmap = FUNC13(np, "syscon");
	if (FUNC0(regmap)) {
		FUNC4(dev, "failed to find syscon\n");
		return FUNC1(regmap);
	}
	FUNC9(dev, regmap, &config);

	/* set some other name then imx */
	rproc = FUNC11(dev, "imx-rproc", &imx_rproc_ops,
			    NULL, sizeof(*priv));
	if (!rproc)
		return -ENOMEM;

	dcfg = FUNC8(dev);
	if (!dcfg) {
		ret = -EINVAL;
		goto err_put_rproc;
	}

	priv = rproc->priv;
	priv->rproc = rproc;
	priv->regmap = regmap;
	priv->dcfg = dcfg;
	priv->dev = dev;

	FUNC5(dev, rproc);

	ret = FUNC7(priv, pdev);
	if (ret) {
		FUNC4(dev, "failed on imx_rproc_addr_init\n");
		goto err_put_rproc;
	}

	priv->clk = FUNC6(dev, NULL);
	if (FUNC0(priv->clk)) {
		FUNC4(dev, "Failed to get clock\n");
		ret = FUNC1(priv->clk);
		goto err_put_rproc;
	}

	/*
	 * clk for M4 block including memory. Should be
	 * enabled before .start for FW transfer.
	 */
	ret = FUNC3(priv->clk);
	if (ret) {
		FUNC4(&rproc->dev, "Failed to enable clock\n");
		goto err_put_rproc;
	}

	ret = FUNC10(rproc);
	if (ret) {
		FUNC4(dev, "rproc_add failed\n");
		goto err_put_clk;
	}

	return 0;

err_put_clk:
	FUNC2(priv->clk);
err_put_rproc:
	FUNC12(rproc);

	return ret;
}