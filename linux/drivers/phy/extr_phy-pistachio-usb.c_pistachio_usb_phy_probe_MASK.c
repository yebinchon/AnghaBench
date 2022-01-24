#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pistachio_usb_phy {TYPE_1__* dev; int /*<<< orphan*/  refclk; struct phy_provider* phy_clk; struct phy_provider* cr_top; } ;
struct phy_provider {int dummy; } ;
typedef  struct phy_provider phy ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct phy_provider*) ; 
 int FUNC1 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 struct phy_provider* FUNC3 (TYPE_1__*,char*) ; 
 struct pistachio_usb_phy* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct phy_provider*,struct pistachio_usb_phy*) ; 
 int /*<<< orphan*/  pistachio_usb_phy_ops ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct pistachio_usb_phy*) ; 
 struct phy_provider* FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct pistachio_usb_phy *p_phy;
	struct phy_provider *provider;
	struct phy *phy;
	int ret;

	p_phy = FUNC4(&pdev->dev, sizeof(*p_phy), GFP_KERNEL);
	if (!p_phy)
		return -ENOMEM;
	p_phy->dev = &pdev->dev;
	FUNC9(pdev, p_phy);

	p_phy->cr_top = FUNC10(p_phy->dev->of_node,
							"img,cr-top");
	if (FUNC0(p_phy->cr_top)) {
		FUNC2(p_phy->dev, "Failed to get CR_TOP registers: %ld\n",
			FUNC1(p_phy->cr_top));
		return FUNC1(p_phy->cr_top);
	}

	p_phy->phy_clk = FUNC3(p_phy->dev, "usb_phy");
	if (FUNC0(p_phy->phy_clk)) {
		FUNC2(p_phy->dev, "Failed to get usb_phy clock: %ld\n",
			FUNC1(p_phy->phy_clk));
		return FUNC1(p_phy->phy_clk);
	}

	ret = FUNC7(p_phy->dev->of_node, "img,refclk",
				   &p_phy->refclk);
	if (ret < 0) {
		FUNC2(p_phy->dev, "No reference clock selector specified\n");
		return ret;
	}

	phy = FUNC6(p_phy->dev, NULL, &pistachio_usb_phy_ops);
	if (FUNC0(phy)) {
		FUNC2(p_phy->dev, "Failed to create PHY: %ld\n",
			FUNC1(phy));
		return FUNC1(phy);
	}
	FUNC8(phy, p_phy);

	provider = FUNC5(p_phy->dev,
						 of_phy_simple_xlate);
	if (FUNC0(provider)) {
		FUNC2(p_phy->dev, "Failed to register PHY provider: %ld\n",
			FUNC1(provider));
		return FUNC1(provider);
	}

	return 0;
}