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
struct TYPE_2__ {int /*<<< orphan*/  dbi_base; int /*<<< orphan*/ * ops; struct device* dev; } ;
struct uniphier_pcie_priv {int /*<<< orphan*/  phy; int /*<<< orphan*/  rst; int /*<<< orphan*/  clk; int /*<<< orphan*/  base; TYPE_1__ pci; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct resource*) ; 
 struct uniphier_pcie_priv* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dw_pcie_ops ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct uniphier_pcie_priv*) ; 
 int FUNC10 (struct uniphier_pcie_priv*,struct platform_device*) ; 
 int FUNC11 (struct uniphier_pcie_priv*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct uniphier_pcie_priv *priv;
	struct resource *res;
	int ret;

	priv = FUNC4(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->pci.dev = dev;
	priv->pci.ops = &dw_pcie_ops;

	res = FUNC8(pdev, IORESOURCE_MEM, "dbi");
	priv->pci.dbi_base = FUNC5(dev, res);
	if (FUNC0(priv->pci.dbi_base))
		return FUNC1(priv->pci.dbi_base);

	res = FUNC8(pdev, IORESOURCE_MEM, "link");
	priv->base = FUNC3(dev, res);
	if (FUNC0(priv->base))
		return FUNC1(priv->base);

	priv->clk = FUNC2(dev, NULL);
	if (FUNC0(priv->clk))
		return FUNC1(priv->clk);

	priv->rst = FUNC7(dev, NULL);
	if (FUNC0(priv->rst))
		return FUNC1(priv->rst);

	priv->phy = FUNC6(dev, "pcie-phy");
	if (FUNC0(priv->phy))
		return FUNC1(priv->phy);

	FUNC9(pdev, priv);

	ret = FUNC11(priv);
	if (ret)
		return ret;

	return FUNC10(priv, pdev);
}