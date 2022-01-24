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
struct resource {int /*<<< orphan*/  start; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct phy {int dummy; } ;
struct hix5hd2_priv {struct phy* peri_ctrl; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct phy*) ; 
 int FUNC1 (struct phy*) ; 
 int FUNC2 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hix5hd2_priv* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy* FUNC7 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hix5hd2_sata_phy_ops ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  FUNC8 (struct phy*,struct hix5hd2_priv*) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct resource*) ; 
 struct phy* FUNC11 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct phy_provider *phy_provider;
	struct device *dev = &pdev->dev;
	struct resource *res;
	struct phy *phy;
	struct hix5hd2_priv *priv;

	priv = FUNC5(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -EINVAL;

	priv->base = FUNC4(dev, res->start, FUNC10(res));
	if (!priv->base)
		return -ENOMEM;

	priv->peri_ctrl = FUNC11(dev->of_node,
					"hisilicon,peripheral-syscon");
	if (FUNC0(priv->peri_ctrl))
		priv->peri_ctrl = NULL;

	phy = FUNC7(dev, NULL, &hix5hd2_sata_phy_ops);
	if (FUNC0(phy)) {
		FUNC3(dev, "failed to create PHY\n");
		return FUNC1(phy);
	}

	FUNC8(phy, priv);
	phy_provider = FUNC6(dev, of_phy_simple_xlate);
	return FUNC2(phy_provider);
}