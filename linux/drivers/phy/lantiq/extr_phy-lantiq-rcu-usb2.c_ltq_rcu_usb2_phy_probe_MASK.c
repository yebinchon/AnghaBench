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
struct ltq_rcu_usb2_priv {struct device* dev; struct phy_provider* phy; int /*<<< orphan*/  phy_reset; int /*<<< orphan*/  ctrl_reset; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct phy_provider*) ; 
 int FUNC1 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct ltq_rcu_usb2_priv*) ; 
 struct ltq_rcu_usb2_priv* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ltq_rcu_usb2_priv*,struct platform_device*) ; 
 int /*<<< orphan*/  ltq_rcu_usb2_phy_ops ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  FUNC8 (struct phy_provider*,struct ltq_rcu_usb2_priv*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct ltq_rcu_usb2_priv *priv;
	struct phy_provider *provider;
	int ret;

	priv = FUNC4(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->dev = dev;

	ret = FUNC7(priv, pdev);
	if (ret)
		return ret;

	/* Reset USB core through reset controller */
	FUNC10(priv->ctrl_reset);

	FUNC9(priv->phy_reset);

	priv->phy = FUNC6(dev, dev->of_node, &ltq_rcu_usb2_phy_ops);
	if (FUNC0(priv->phy)) {
		FUNC2(dev, "failed to create PHY\n");
		return FUNC1(priv->phy);
	}

	FUNC8(priv->phy, priv);

	provider = FUNC5(dev, of_phy_simple_xlate);
	if (FUNC0(provider))
		return FUNC1(provider);

	FUNC3(priv->dev, priv);
	return 0;
}