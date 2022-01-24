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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct imx8mq_usb_phy {int /*<<< orphan*/  phy; int /*<<< orphan*/  vbus; int /*<<< orphan*/  base; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct resource*) ; 
 struct imx8mq_usb_phy* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC7 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*) ; 
 int /*<<< orphan*/  imx8mq_usb_phy_ops ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct imx8mq_usb_phy*) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct phy_provider *phy_provider;
	struct device *dev = &pdev->dev;
	struct imx8mq_usb_phy *imx_phy;
	struct resource *res;

	imx_phy = FUNC6(dev, sizeof(*imx_phy), GFP_KERNEL);
	if (!imx_phy)
		return -ENOMEM;

	imx_phy->clk = FUNC4(dev, "phy");
	if (FUNC0(imx_phy->clk)) {
		FUNC3(dev, "failed to get imx8mq usb phy clock\n");
		return FUNC1(imx_phy->clk);
	}

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	imx_phy->base = FUNC5(dev, res);
	if (FUNC0(imx_phy->base))
		return FUNC1(imx_phy->base);

	imx_phy->phy = FUNC8(dev, NULL, &imx8mq_usb_phy_ops);
	if (FUNC0(imx_phy->phy))
		return FUNC1(imx_phy->phy);

	imx_phy->vbus = FUNC9(dev, "vbus");
	if (FUNC0(imx_phy->vbus))
		return FUNC1(imx_phy->vbus);

	FUNC10(imx_phy->phy, imx_phy);

	phy_provider = FUNC7(dev, of_phy_simple_xlate);

	return FUNC2(phy_provider);
}