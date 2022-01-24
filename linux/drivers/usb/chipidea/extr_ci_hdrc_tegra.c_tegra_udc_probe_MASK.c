#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tegra_udc_soc_info {int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {char* name; int /*<<< orphan*/  capoffset; int /*<<< orphan*/  usb_phy; int /*<<< orphan*/  flags; } ;
struct tegra_udc {int /*<<< orphan*/  clk; int /*<<< orphan*/  phy; int /*<<< orphan*/  dev; TYPE_1__ data; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  num_resources; int /*<<< orphan*/  resource; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEF_CAPOFFSET ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct tegra_udc* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct tegra_udc_soc_info* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct tegra_udc*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	const struct tegra_udc_soc_info *soc;
	struct tegra_udc *udc;
	int err;

	udc = FUNC7(&pdev->dev, sizeof(*udc), GFP_KERNEL);
	if (!udc)
		return -ENOMEM;

	soc = FUNC9(&pdev->dev);
	if (!soc) {
		FUNC5(&pdev->dev, "failed to match OF data\n");
		return -EINVAL;
	}

	udc->phy = FUNC8(&pdev->dev, "nvidia,phy", 0);
	if (FUNC0(udc->phy)) {
		err = FUNC1(udc->phy);
		FUNC5(&pdev->dev, "failed to get PHY: %d\n", err);
		return err;
	}

	udc->clk = FUNC6(&pdev->dev, NULL);
	if (FUNC0(udc->clk)) {
		err = FUNC1(udc->clk);
		FUNC5(&pdev->dev, "failed to get clock: %d\n", err);
		return err;
	}

	err = FUNC4(udc->clk);
	if (err < 0) {
		FUNC5(&pdev->dev, "failed to enable clock: %d\n", err);
		return err;
	}

	/*
	 * Tegra's USB PHY driver doesn't implement optional phy_init()
	 * hook, so we have to power on UDC controller before ChipIdea
	 * driver initialization kicks in.
	 */
	FUNC11(udc->phy, 0);

	/* setup and register ChipIdea HDRC device */
	udc->data.name = "tegra-udc";
	udc->data.flags = soc->flags;
	udc->data.usb_phy = udc->phy;
	udc->data.capoffset = DEF_CAPOFFSET;

	udc->dev = FUNC2(&pdev->dev, pdev->resource,
				      pdev->num_resources, &udc->data);
	if (FUNC0(udc->dev)) {
		err = FUNC1(udc->dev);
		FUNC5(&pdev->dev, "failed to add HDRC device: %d\n", err);
		goto fail_power_off;
	}

	FUNC10(pdev, udc);

	return 0;

fail_power_off:
	FUNC11(udc->phy, 1);
	FUNC3(udc->clk);
	return err;
}