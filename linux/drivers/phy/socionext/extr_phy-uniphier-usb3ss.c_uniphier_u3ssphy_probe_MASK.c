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
struct uniphier_u3ssphy_priv {struct phy* vbus; struct phy* rst_parent; struct phy* clk_parent; struct phy* rst_parent_gio; struct phy* clk_parent_gio; struct phy* rst; struct phy* clk_ext; struct phy* clk; TYPE_1__* data; struct phy* base; struct device* dev; } ;
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct phy {int dummy; } ;
struct TYPE_2__ {scalar_t__ nparams; int /*<<< orphan*/  is_legacy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct phy*) ; 
 scalar_t__ MAX_PHY_PARAMS ; 
 int FUNC1 (struct phy*) ; 
 int FUNC2 (struct phy_provider*) ; 
 scalar_t__ FUNC3 (int) ; 
 void* FUNC4 (struct device*,char*) ; 
 struct phy* FUNC5 (struct device*,char*) ; 
 struct phy* FUNC6 (struct device*,struct resource*) ; 
 struct uniphier_u3ssphy_priv* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC8 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy* FUNC9 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct phy* FUNC10 (struct device*,char*) ; 
 void* FUNC11 (struct device*,char*) ; 
 TYPE_1__* FUNC12 (struct device*) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  FUNC13 (struct phy*,struct uniphier_u3ssphy_priv*) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uniphier_u3ssphy_ops ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct uniphier_u3ssphy_priv *priv;
	struct phy_provider *phy_provider;
	struct resource *res;
	struct phy *phy;

	priv = FUNC7(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->dev = dev;
	priv->data = FUNC12(dev);
	if (FUNC3(!priv->data ||
		    priv->data->nparams > MAX_PHY_PARAMS))
		return -EINVAL;

	res = FUNC14(pdev, IORESOURCE_MEM, 0);
	priv->base = FUNC6(dev, res);
	if (FUNC0(priv->base))
		return FUNC1(priv->base);

	if (!priv->data->is_legacy) {
		priv->clk = FUNC4(dev, "phy");
		if (FUNC0(priv->clk))
			return FUNC1(priv->clk);

		priv->clk_ext = FUNC5(dev, "phy-ext");
		if (FUNC0(priv->clk_ext))
			return FUNC1(priv->clk_ext);

		priv->rst = FUNC11(dev, "phy");
		if (FUNC0(priv->rst))
			return FUNC1(priv->rst);
	} else {
		priv->clk_parent_gio = FUNC4(dev, "gio");
		if (FUNC0(priv->clk_parent_gio))
			return FUNC1(priv->clk_parent_gio);

		priv->rst_parent_gio =
			FUNC11(dev, "gio");
		if (FUNC0(priv->rst_parent_gio))
			return FUNC1(priv->rst_parent_gio);
	}

	priv->clk_parent = FUNC4(dev, "link");
	if (FUNC0(priv->clk_parent))
		return FUNC1(priv->clk_parent);

	priv->rst_parent = FUNC11(dev, "link");
	if (FUNC0(priv->rst_parent))
		return FUNC1(priv->rst_parent);

	priv->vbus = FUNC10(dev, "vbus");
	if (FUNC0(priv->vbus)) {
		if (FUNC1(priv->vbus) == -EPROBE_DEFER)
			return FUNC1(priv->vbus);
		priv->vbus = NULL;
	}

	phy = FUNC9(dev, dev->of_node, &uniphier_u3ssphy_ops);
	if (FUNC0(phy))
		return FUNC1(phy);

	FUNC13(phy, priv);
	phy_provider = FUNC8(dev, of_phy_simple_xlate);

	return FUNC2(phy_provider);
}