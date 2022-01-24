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
struct platform_device {struct device dev; } ;
struct phy_gmii_sel_priv {int /*<<< orphan*/  phy_provider; int /*<<< orphan*/  regmap; int /*<<< orphan*/  soc_data; struct device* dev; } ;
struct of_device_id {int /*<<< orphan*/  data; } ;
struct device_node {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct phy_gmii_sel_priv*) ; 
 struct phy_gmii_sel_priv* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC6 (int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  phy_gmii_sel_id_table ; 
 int FUNC7 (struct phy_gmii_sel_priv*) ; 
 int /*<<< orphan*/  phy_gmii_sel_of_xlate ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *node = dev->of_node;
	const struct of_device_id *of_id;
	struct phy_gmii_sel_priv *priv;
	int ret;

	of_id = FUNC6(phy_gmii_sel_id_table, pdev->dev.of_node);
	if (!of_id)
		return -EINVAL;

	priv = FUNC4(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->dev = &pdev->dev;
	priv->soc_data = of_id->data;

	priv->regmap = FUNC8(node->parent);
	if (FUNC0(priv->regmap)) {
		ret = FUNC1(priv->regmap);
		FUNC2(dev, "Failed to get syscon %d\n", ret);
		return ret;
	}

	ret = FUNC7(priv);
	if (ret)
		return ret;

	FUNC3(&pdev->dev, priv);

	priv->phy_provider =
		FUNC5(dev,
					      phy_gmii_sel_of_xlate);
	if (FUNC0(priv->phy_provider)) {
		ret = FUNC1(priv->phy_provider);
		FUNC2(dev, "Failed to create phy provider %d\n", ret);
		return ret;
	}

	return 0;
}