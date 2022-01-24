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
struct st_ohci_platform_priv {scalar_t__* clks; int /*<<< orphan*/  phy; int /*<<< orphan*/  rst; int /*<<< orphan*/  pwr; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int USB_MAX_CLKS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct st_ohci_platform_priv* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct platform_device *dev)
{
	struct usb_hcd *hcd = FUNC4(dev);
	struct st_ohci_platform_priv *priv = FUNC1(hcd);

	int clk;

	FUNC5(priv->pwr);

	FUNC5(priv->rst);

	FUNC3(priv->phy);

	FUNC2(priv->phy);

	for (clk = USB_MAX_CLKS - 1; clk >= 0; clk--)
		if (priv->clks[clk])
			FUNC0(priv->clks[clk]);
}