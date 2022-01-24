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
struct usb_hcd {int dummy; } ;
struct tegra_ehci_hcd {int /*<<< orphan*/  rst; } ;
struct reset_control {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {scalar_t__ priv; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 TYPE_1__* FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct reset_control* FUNC5 (struct device_node*,char*) ; 
 struct usb_hcd* FUNC6 (struct platform_device*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device_node *phy_np;
	struct usb_hcd *hcd = FUNC6(pdev);
	struct tegra_ehci_hcd *tegra =
		(struct tegra_ehci_hcd *)FUNC2(hcd)->priv;
	struct reset_control *rst;
	int err;

	phy_np = FUNC4(pdev->dev.of_node, "nvidia,phy", 0);
	if (!phy_np)
		return -ENOENT;

	/*
	 * The 1st USB controller contains some UTMI pad registers that are
	 * global for all the controllers on the chip. Those registers are
	 * also cleared when reset is asserted to the 1st controller.
	 */
	rst = FUNC5(phy_np, "utmi-pads");
	if (FUNC0(rst)) {
		FUNC1(&pdev->dev,
			 "can't get utmi-pads reset from the PHY\n");
		FUNC1(&pdev->dev,
			 "continuing, but please update your DT\n");
	} else {
		/*
		 * PHY driver performs UTMI-pads reset in a case of
		 * non-legacy DT.
		 */
		FUNC9(rst);
	}

	FUNC3(phy_np);

	/* reset control is shared, hence initialize it first */
	err = FUNC8(tegra->rst);
	if (err)
		return err;

	err = FUNC7(tegra->rst);
	if (err)
		return err;

	FUNC10(1);

	err = FUNC8(tegra->rst);
	if (err)
		return err;

	return 0;
}