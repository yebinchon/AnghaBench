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
struct xhci_hcd {struct usb_hcd* shared_hcd; int /*<<< orphan*/  xhc_state; struct clk* reg_clk; struct clk* clk; } ;
struct usb_hcd {int /*<<< orphan*/  usb_phy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XHCI_STATE_REMOVING ; 
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 struct xhci_hcd* FUNC1 (struct usb_hcd*) ; 
 struct usb_hcd* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *dev)
{
	struct usb_hcd	*hcd = FUNC2(dev);
	struct xhci_hcd	*xhci = FUNC1(hcd);
	struct clk *clk = xhci->clk;
	struct clk *reg_clk = xhci->reg_clk;
	struct usb_hcd *shared_hcd = xhci->shared_hcd;

	xhci->xhc_state |= XHCI_STATE_REMOVING;

	FUNC7(shared_hcd);
	xhci->shared_hcd = NULL;
	FUNC5(hcd->usb_phy);

	FUNC7(hcd);
	FUNC6(shared_hcd);

	FUNC0(clk);
	FUNC0(reg_clk);
	FUNC6(hcd);

	FUNC4(&dev->dev);
	FUNC3(&dev->dev);

	return 0;
}