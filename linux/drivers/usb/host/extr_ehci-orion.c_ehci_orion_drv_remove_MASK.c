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
struct platform_device {int dummy; } ;
struct orion_ehci_hcd {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct orion_ehci_hcd* FUNC2 (struct usb_hcd*) ; 
 struct usb_hcd* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct usb_hcd *hcd = FUNC3(pdev);
	struct orion_ehci_hcd *priv = FUNC2(hcd);

	FUNC5(hcd);

	if (!FUNC0(priv->clk))
		FUNC1(priv->clk);

	FUNC4(hcd);

	return 0;
}