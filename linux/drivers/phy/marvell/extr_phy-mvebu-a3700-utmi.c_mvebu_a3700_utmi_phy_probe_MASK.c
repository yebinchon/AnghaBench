#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct mvebu_a3700_utmi {int /*<<< orphan*/  phy; TYPE_1__* caps; int /*<<< orphan*/  usb_misc; int /*<<< orphan*/  regs; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* power_off ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {TYPE_2__* ops; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct resource*) ; 
 struct mvebu_a3700_utmi* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_1__* FUNC8 (struct device*) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct mvebu_a3700_utmi*) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct mvebu_a3700_utmi *utmi;
	struct phy_provider *provider;
	struct resource *res;

	utmi = FUNC5(dev, sizeof(*utmi), GFP_KERNEL);
	if (!utmi)
		return -ENOMEM;

	/* Get UTMI memory region */
	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC3(dev, "Missing UTMI PHY memory resource\n");
		return -ENODEV;
	}

	utmi->regs = FUNC4(dev, res);
	if (FUNC0(utmi->regs))
		return FUNC1(utmi->regs);

	/* Get miscellaneous Host/PHY region */
	utmi->usb_misc = FUNC12(dev->of_node,
							 "marvell,usb-misc-reg");
	if (FUNC0(utmi->usb_misc)) {
		FUNC3(dev,
			"Missing USB misc purpose system controller\n");
		return FUNC1(utmi->usb_misc);
	}

	/* Retrieve PHY capabilities */
	utmi->caps = FUNC8(dev);

	/* Instantiate the PHY */
	utmi->phy = FUNC7(dev, NULL, utmi->caps->ops);
	if (FUNC0(utmi->phy)) {
		FUNC3(dev, "Failed to create the UTMI PHY\n");
		return FUNC1(utmi->phy);
	}

	FUNC9(utmi->phy, utmi);

	/* Ensure the PHY is powered off */
	utmi->caps->ops->power_off(utmi->phy);

	provider = FUNC6(dev, of_phy_simple_xlate);

	return FUNC2(provider);
}