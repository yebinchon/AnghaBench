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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct phy {int dummy; } ;
struct hi6220_priv {struct phy* reg; struct device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct phy*) ; 
 int FUNC1 (struct phy*) ; 
 int FUNC2 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct hi6220_priv* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy* FUNC6 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct hi6220_priv*) ; 
 int /*<<< orphan*/  hi6220_phy_ops ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  FUNC8 (struct phy*,struct hi6220_priv*) ; 
 struct phy* FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct phy_provider *phy_provider;
	struct device *dev = &pdev->dev;
	struct phy *phy;
	struct hi6220_priv *priv;

	priv = FUNC4(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->dev = dev;
	priv->reg = FUNC9(dev->of_node,
					"hisilicon,peripheral-syscon");
	if (FUNC0(priv->reg)) {
		FUNC3(dev, "no hisilicon,peripheral-syscon\n");
		return FUNC1(priv->reg);
	}

	FUNC7(priv);

	phy = FUNC6(dev, NULL, &hi6220_phy_ops);
	if (FUNC0(phy))
		return FUNC1(phy);

	FUNC8(phy, priv);
	phy_provider = FUNC5(dev, of_phy_simple_xlate);
	return FUNC2(phy_provider);
}