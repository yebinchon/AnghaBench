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
struct pxa_usb_phy {int version; struct phy_provider* phy; struct phy_provider* base; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct of_device_id {scalar_t__ data; } ;
typedef  enum pxa_usb_phy_version { ____Placeholder_pxa_usb_phy_version } pxa_usb_phy_version ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct phy_provider*) ; 
 int FUNC1 (struct phy_provider*) ; 
 int PXA_USB_PHY_MMP2 ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct phy_provider* FUNC4 (struct device*,struct resource*) ; 
 struct pxa_usb_phy* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC7 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  FUNC9 (struct phy_provider*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct phy_provider*,struct pxa_usb_phy*) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pxa_usb_phy_of_match ; 
 int /*<<< orphan*/  pxa_usb_phy_ops ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct resource *resource;
	struct pxa_usb_phy *pxa_usb_phy;
	struct phy_provider *provider;
	const struct of_device_id *of_id;

	pxa_usb_phy = FUNC5(dev, sizeof(struct pxa_usb_phy), GFP_KERNEL);
	if (!pxa_usb_phy)
		return -ENOMEM;

	of_id = FUNC8(pxa_usb_phy_of_match, dev->of_node);
	if (of_id)
		pxa_usb_phy->version = (enum pxa_usb_phy_version)of_id->data;
	else
		pxa_usb_phy->version = PXA_USB_PHY_MMP2;

	resource = FUNC11(pdev, IORESOURCE_MEM, 0);
	pxa_usb_phy->base = FUNC4(dev, resource);
	if (FUNC0(pxa_usb_phy->base)) {
		FUNC2(dev, "failed to remap PHY regs\n");
		return FUNC1(pxa_usb_phy->base);
	}

	pxa_usb_phy->phy = FUNC7(dev, NULL, &pxa_usb_phy_ops);
	if (FUNC0(pxa_usb_phy->phy)) {
		FUNC2(dev, "failed to create PHY\n");
		return FUNC1(pxa_usb_phy->phy);
	}

	FUNC10(pxa_usb_phy->phy, pxa_usb_phy);
	provider = FUNC6(dev, of_phy_simple_xlate);
	if (FUNC0(provider)) {
		FUNC2(dev, "failed to register PHY provider\n");
		return FUNC1(provider);
	}

	if (!dev->of_node) {
		FUNC9(pxa_usb_phy->phy, "usb", "mv-udc");
		FUNC9(pxa_usb_phy->phy, "usb", "pxa-u2oehci");
		FUNC9(pxa_usb_phy->phy, "usb", "mv-otg");
	}

	FUNC3(dev, "Marvell PXA USB PHY");
	return 0;
}