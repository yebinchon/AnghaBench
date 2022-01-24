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
struct rcar_gen3_usb3 {int usb3s_clk; int usb_extal; struct phy_provider* phy; int /*<<< orphan*/  ssc_range; struct phy_provider* base; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
typedef  struct phy_provider clk ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct phy_provider*) ; 
 int FUNC1 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 struct phy_provider* FUNC6 (struct device*,char*) ; 
 struct phy_provider* FUNC7 (struct device*,struct resource*) ; 
 struct rcar_gen3_usb3* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC9 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC10 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct phy_provider*,struct rcar_gen3_usb3*) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct rcar_gen3_usb3*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 int /*<<< orphan*/  rcar_gen3_phy_usb3_ops ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct rcar_gen3_usb3 *r;
	struct phy_provider *provider;
	struct resource *res;
	int ret = 0;
	struct clk *clk;

	if (!dev->of_node) {
		FUNC5(dev, "This driver needs device tree\n");
		return -EINVAL;
	}

	r = FUNC8(dev, sizeof(*r), GFP_KERNEL);
	if (!r)
		return -ENOMEM;

	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	r->base = FUNC7(dev, res);
	if (FUNC0(r->base))
		return FUNC1(r->base);

	clk = FUNC6(dev, "usb3s_clk");
	if (!FUNC0(clk) && !FUNC4(clk)) {
		r->usb3s_clk = !!FUNC3(clk);
		FUNC2(clk);
	}
	clk = FUNC6(dev, "usb_extal");
	if (!FUNC0(clk) && !FUNC4(clk)) {
		r->usb_extal = !!FUNC3(clk);
		FUNC2(clk);
	}

	if (!r->usb3s_clk && !r->usb_extal) {
		FUNC5(dev, "This driver needs usb3s_clk and/or usb_extal\n");
		ret = -EINVAL;
		goto error;
	}

	/*
	 * devm_phy_create() will call pm_runtime_enable(&phy->dev);
	 * And then, phy-core will manage runtime pm for this device.
	 */
	FUNC16(dev);

	r->phy = FUNC10(dev, NULL, &rcar_gen3_phy_usb3_ops);
	if (FUNC0(r->phy)) {
		FUNC5(dev, "Failed to create USB3 PHY\n");
		ret = FUNC1(r->phy);
		goto error;
	}

	FUNC11(dev->of_node, "renesas,ssc-range", &r->ssc_range);

	FUNC14(pdev, r);
	FUNC12(r->phy, r);

	provider = FUNC9(dev, of_phy_simple_xlate);
	if (FUNC0(provider)) {
		FUNC5(dev, "Failed to register PHY provider\n");
		ret = FUNC1(provider);
		goto error;
	}

	return 0;

error:
	FUNC15(dev);

	return ret;
}