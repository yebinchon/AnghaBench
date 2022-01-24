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
struct resource {int dummy; } ;
struct priv {struct phy_provider* clk; struct phy_provider* base; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct phy_provider {int dummy; } ;
typedef  struct phy_provider phy ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct phy_provider*) ; 
 int FUNC1 (struct phy_provider*) ; 
 struct phy_provider* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct phy_provider* FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 struct priv* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  phy_mvebu_sata_ops ; 
 int /*<<< orphan*/  FUNC7 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC8 (struct phy_provider*,struct priv*) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct phy_provider *phy_provider;
	struct resource *res;
	struct priv *priv;
	struct phy *phy;

	priv = FUNC4(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	priv->base = FUNC3(&pdev->dev, res);
	if (FUNC0(priv->base))
		return FUNC1(priv->base);

	priv->clk = FUNC2(&pdev->dev, "sata");
	if (FUNC0(priv->clk))
		return FUNC1(priv->clk);

	phy = FUNC6(&pdev->dev, NULL, &phy_mvebu_sata_ops);
	if (FUNC0(phy))
		return FUNC1(phy);

	FUNC8(phy, priv);

	phy_provider = FUNC5(&pdev->dev,
						     of_phy_simple_xlate);
	if (FUNC0(phy_provider))
		return FUNC1(phy_provider);

	/* The boot loader may of left it on. Turn it off. */
	FUNC7(phy);

	return 0;
}