#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct phy_provider {int dummy; } ;
struct lpc18xx_usb_otg_phy {int /*<<< orphan*/  phy; int /*<<< orphan*/  clk; int /*<<< orphan*/  reg; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 struct lpc18xx_usb_otg_phy* FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lpc18xx_usb_otg_phy_ops ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct lpc18xx_usb_otg_phy*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct phy_provider *phy_provider;
	struct lpc18xx_usb_otg_phy *lpc;

	lpc = FUNC5(&pdev->dev, sizeof(*lpc), GFP_KERNEL);
	if (!lpc)
		return -ENOMEM;

	lpc->reg = FUNC9(pdev->dev.of_node->parent);
	if (FUNC0(lpc->reg)) {
		FUNC3(&pdev->dev, "failed to get syscon\n");
		return FUNC1(lpc->reg);
	}

	lpc->clk = FUNC4(&pdev->dev, NULL);
	if (FUNC0(lpc->clk)) {
		FUNC3(&pdev->dev, "failed to get clock\n");
		return FUNC1(lpc->clk);
	}

	lpc->phy = FUNC7(&pdev->dev, NULL, &lpc18xx_usb_otg_phy_ops);
	if (FUNC0(lpc->phy)) {
		FUNC3(&pdev->dev, "failed to create PHY\n");
		return FUNC1(lpc->phy);
	}

	FUNC8(lpc->phy, lpc);

	phy_provider = FUNC6(&pdev->dev,
						     of_phy_simple_xlate);

	return FUNC2(phy_provider);
}