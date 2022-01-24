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
struct usb_hcd {int dummy; } ;
struct da8xx_ohci_hcd {int /*<<< orphan*/  usb11_clk; int /*<<< orphan*/  usb11_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct da8xx_ohci_hcd* FUNC5 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC6(struct usb_hcd *hcd)
{
	struct da8xx_ohci_hcd *da8xx_ohci = FUNC5(hcd);
	int ret;

	ret = FUNC1(da8xx_ohci->usb11_clk);
	if (ret)
		return ret;

	ret = FUNC3(da8xx_ohci->usb11_phy);
	if (ret)
		goto err_phy_init;

	ret = FUNC4(da8xx_ohci->usb11_phy);
	if (ret)
		goto err_phy_power_on;

	return 0;

err_phy_power_on:
	FUNC2(da8xx_ohci->usb11_phy);
err_phy_init:
	FUNC0(da8xx_ohci->usb11_clk);

	return ret;
}