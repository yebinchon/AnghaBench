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
struct usb_hcd {int dummy; } ;
struct usb_ehci_pdata {int /*<<< orphan*/  (* power_off ) (struct platform_device*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/ * platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct ehci_platform_priv {scalar_t__* clks; int /*<<< orphan*/  rsts; } ;

/* Variables and functions */
 int EHCI_MAX_CLKS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct usb_ehci_pdata* FUNC1 (TYPE_1__*) ; 
 struct usb_ehci_pdata ehci_platform_defaults ; 
 struct ehci_platform_priv* FUNC2 (struct usb_hcd*) ; 
 struct usb_hcd* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *dev)
{
	struct usb_hcd *hcd = FUNC3(dev);
	struct usb_ehci_pdata *pdata = FUNC1(&dev->dev);
	struct ehci_platform_priv *priv = FUNC2(hcd);
	int clk;

	FUNC7(hcd);

	if (pdata->power_off)
		pdata->power_off(dev);

	FUNC4(priv->rsts);

	for (clk = 0; clk < EHCI_MAX_CLKS && priv->clks[clk]; clk++)
		FUNC0(priv->clks[clk]);

	FUNC6(hcd);

	if (pdata == &ehci_platform_defaults)
		dev->dev.platform_data = NULL;

	return 0;
}