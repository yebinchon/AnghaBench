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
typedef  int /*<<< orphan*/  u32 ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct phy_provider {int dummy; } ;
struct phy_berlin_usb_priv {int /*<<< orphan*/  pll_divider; struct phy* rst_ctrl; struct phy* base; } ;
struct phy {int dummy; } ;
struct of_device_id {scalar_t__ data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct phy*) ; 
 int FUNC1 (struct phy*) ; 
 int FUNC2 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct phy* FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 struct phy_berlin_usb_priv* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct phy* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct phy* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  phy_berlin_usb_of_match ; 
 int /*<<< orphan*/  phy_berlin_usb_ops ; 
 int /*<<< orphan*/  FUNC10 (struct phy*,struct phy_berlin_usb_priv*) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	const struct of_device_id *match =
		FUNC9(phy_berlin_usb_of_match, &pdev->dev);
	struct phy_berlin_usb_priv *priv;
	struct resource *res;
	struct phy *phy;
	struct phy_provider *phy_provider;

	priv = FUNC5(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	priv->base = FUNC4(&pdev->dev, res);
	if (FUNC0(priv->base))
		return FUNC1(priv->base);

	priv->rst_ctrl = FUNC8(&pdev->dev, NULL);
	if (FUNC0(priv->rst_ctrl))
		return FUNC1(priv->rst_ctrl);

	priv->pll_divider = *((u32 *)match->data);

	phy = FUNC7(&pdev->dev, NULL, &phy_berlin_usb_ops);
	if (FUNC0(phy)) {
		FUNC3(&pdev->dev, "failed to create PHY\n");
		return FUNC1(phy);
	}

	FUNC10(phy, priv);

	phy_provider =
		FUNC6(&pdev->dev, of_phy_simple_xlate);
	return FUNC2(phy_provider);
}