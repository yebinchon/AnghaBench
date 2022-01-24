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
struct usb_hcd {TYPE_1__* usb_phy; } ;
struct tegra_ehci_hcd {int /*<<< orphan*/  clk; int /*<<< orphan*/  rst; } ;
struct platform_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  otg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct usb_hcd* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct usb_hcd *hcd = FUNC3(pdev);
	struct tegra_ehci_hcd *tegra =
		(struct tegra_ehci_hcd *)FUNC1(hcd)->priv;

	FUNC2(hcd->usb_phy->otg, NULL);

	FUNC6(hcd->usb_phy);
	FUNC8(hcd);

	FUNC4(tegra->rst);
	FUNC5(1);

	FUNC0(tegra->clk);

	FUNC7(hcd);

	return 0;
}