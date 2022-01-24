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
struct uniphier_pciephy_priv {TYPE_1__* data; struct regmap* rst; struct regmap* clk; struct regmap* base; struct device* dev; } ;
struct resource {int dummy; } ;
struct regmap {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
typedef  struct regmap phy ;
struct TYPE_2__ {scalar_t__ has_syscon; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int FUNC2 (struct phy_provider*) ; 
 int /*<<< orphan*/  SG_USBPCIESEL ; 
 int /*<<< orphan*/  SG_USBPCIESEL_PCIE ; 
 scalar_t__ FUNC3 (int) ; 
 struct regmap* FUNC4 (struct device*,int /*<<< orphan*/ *) ; 
 struct regmap* FUNC5 (struct device*,struct resource*) ; 
 struct uniphier_pciephy_priv* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC7 (struct device*,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC8 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct regmap* FUNC9 (struct device*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (struct device*) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  FUNC11 (struct regmap*,struct uniphier_pciephy_priv*) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  uniphier_pciephy_ops ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct uniphier_pciephy_priv *priv;
	struct phy_provider *phy_provider;
	struct device *dev = &pdev->dev;
	struct regmap *regmap;
	struct resource *res;
	struct phy *phy;

	priv = FUNC6(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->data = FUNC10(dev);
	if (FUNC3(!priv->data))
		return -EINVAL;

	priv->dev = dev;

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	priv->base = FUNC5(dev, res);
	if (FUNC0(priv->base))
		return FUNC1(priv->base);

	priv->clk = FUNC4(dev, NULL);
	if (FUNC0(priv->clk))
		return FUNC1(priv->clk);

	priv->rst = FUNC9(dev, NULL);
	if (FUNC0(priv->rst))
		return FUNC1(priv->rst);

	phy = FUNC8(dev, dev->of_node, &uniphier_pciephy_ops);
	if (FUNC0(phy))
		return FUNC1(phy);

	regmap = FUNC14(dev->of_node,
						 "socionext,syscon");
	if (!FUNC0(regmap) && priv->data->has_syscon)
		FUNC13(regmap, SG_USBPCIESEL,
				   SG_USBPCIESEL_PCIE, SG_USBPCIESEL_PCIE);

	FUNC11(phy, priv);
	phy_provider = FUNC7(dev, of_phy_simple_xlate);

	return FUNC2(phy_provider);
}