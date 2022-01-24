#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct phy_provider {int dummy; } ;
struct mv_hsic_phy {int /*<<< orphan*/  phy; int /*<<< orphan*/  base; int /*<<< orphan*/  clk; struct platform_device* pdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct resource*) ; 
 struct mv_hsic_phy* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hsic_ops ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct mv_hsic_phy*) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct phy_provider *phy_provider;
	struct mv_hsic_phy *mv_phy;
	struct resource *r;

	mv_phy = FUNC6(&pdev->dev, sizeof(*mv_phy), GFP_KERNEL);
	if (!mv_phy)
		return -ENOMEM;

	mv_phy->pdev = pdev;

	mv_phy->clk = FUNC4(&pdev->dev, NULL);
	if (FUNC0(mv_phy->clk)) {
		FUNC3(&pdev->dev, "failed to get clock.\n");
		return FUNC1(mv_phy->clk);
	}

	r = FUNC10(pdev, IORESOURCE_MEM, 0);
	mv_phy->base = FUNC5(&pdev->dev, r);
	if (FUNC0(mv_phy->base))
		return FUNC1(mv_phy->base);

	mv_phy->phy = FUNC8(&pdev->dev, pdev->dev.of_node, &hsic_ops);
	if (FUNC0(mv_phy->phy))
		return FUNC1(mv_phy->phy);

	FUNC9(mv_phy->phy, mv_phy);

	phy_provider = FUNC7(&pdev->dev, of_phy_simple_xlate);
	return FUNC2(phy_provider);
}