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
struct spear1340_miphy_priv {struct phy_provider* phy; struct phy_provider* misc; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct phy_provider*) ; 
 int FUNC1 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct spear1340_miphy_priv*) ; 
 struct spear1340_miphy_priv* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC6 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct phy_provider*,struct spear1340_miphy_priv*) ; 
 int /*<<< orphan*/  spear1340_miphy_ops ; 
 int /*<<< orphan*/  spear1340_miphy_xlate ; 
 struct phy_provider* FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct spear1340_miphy_priv *priv;
	struct phy_provider *phy_provider;

	priv = FUNC4(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->misc =
		FUNC8(dev->of_node, "misc");
	if (FUNC0(priv->misc)) {
		FUNC2(dev, "failed to find misc regmap\n");
		return FUNC1(priv->misc);
	}

	priv->phy = FUNC6(dev, NULL, &spear1340_miphy_ops);
	if (FUNC0(priv->phy)) {
		FUNC2(dev, "failed to create SATA PCIe PHY\n");
		return FUNC1(priv->phy);
	}

	FUNC3(dev, priv);
	FUNC7(priv->phy, priv);

	phy_provider =
		FUNC5(dev, spear1340_miphy_xlate);
	if (FUNC0(phy_provider)) {
		FUNC2(dev, "failed to register phy provider\n");
		return FUNC1(phy_provider);
	}

	return 0;
}