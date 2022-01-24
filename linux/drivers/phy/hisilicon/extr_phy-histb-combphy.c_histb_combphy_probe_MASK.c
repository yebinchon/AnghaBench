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
typedef  void* u32 ;
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct histb_combphy_mode {void* mask; void* shift; void* reg; int /*<<< orphan*/  fixed; } ;
struct histb_combphy_priv {int /*<<< orphan*/  phy; int /*<<< orphan*/  por_rst; int /*<<< orphan*/  ref_clk; struct histb_combphy_mode mode; int /*<<< orphan*/  syscon; int /*<<< orphan*/  mmio; } ;
struct device_node {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PHY_NONE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct histb_combphy_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,struct resource*) ; 
 struct histb_combphy_priv* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC10 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  histb_combphy_ops ; 
 int /*<<< orphan*/  histb_combphy_xlate ; 
 scalar_t__ FUNC13 (struct histb_combphy_mode*) ; 
 int FUNC14 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct device_node*,char*,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct histb_combphy_priv*) ; 
 struct resource* FUNC17 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct phy_provider *phy_provider;
	struct device *dev = &pdev->dev;
	struct histb_combphy_priv *priv;
	struct device_node *np = dev->of_node;
	struct histb_combphy_mode *mode;
	struct resource *res;
	u32 vals[3];
	int ret;

	priv = FUNC9(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	res = FUNC17(pdev, IORESOURCE_MEM, 0);
	priv->mmio = FUNC8(dev, res);
	if (FUNC1(priv->mmio)) {
		ret = FUNC2(priv->mmio);
		return ret;
	}

	priv->syscon = FUNC18(np->parent);
	if (FUNC1(priv->syscon)) {
		FUNC5(dev, "failed to find peri_ctrl syscon regmap\n");
		return FUNC2(priv->syscon);
	}

	mode = &priv->mode;
	mode->fixed = PHY_NONE;

	ret = FUNC14(np, "hisilicon,fixed-mode", &mode->fixed);
	if (ret == 0)
		FUNC4(dev, "found fixed phy mode %d\n", mode->fixed);

	ret = FUNC15(np, "hisilicon,mode-select-bits",
					 vals, FUNC0(vals));
	if (ret == 0) {
		if (FUNC13(mode)) {
			FUNC5(dev, "found select bits for fixed mode phy\n");
			return -EINVAL;
		}

		mode->reg = vals[0];
		mode->shift = vals[1];
		mode->mask = vals[2];
		FUNC4(dev, "found mode select bits\n");
	} else {
		if (!FUNC13(mode)) {
			FUNC5(dev, "no valid select bits found for non-fixed phy\n");
			return -ENODEV;
		}
	}

	priv->ref_clk = FUNC7(dev, NULL);
	if (FUNC1(priv->ref_clk)) {
		FUNC5(dev, "failed to find ref clock\n");
		return FUNC2(priv->ref_clk);
	}

	priv->por_rst = FUNC12(dev, NULL);
	if (FUNC1(priv->por_rst)) {
		FUNC5(dev, "failed to get poweron reset\n");
		return FUNC2(priv->por_rst);
	}

	priv->phy = FUNC11(dev, NULL, &histb_combphy_ops);
	if (FUNC1(priv->phy)) {
		FUNC5(dev, "failed to create combphy\n");
		return FUNC2(priv->phy);
	}

	FUNC6(dev, priv);
	FUNC16(priv->phy, priv);

	phy_provider = FUNC10(dev, histb_combphy_xlate);
	return FUNC3(phy_provider);
}