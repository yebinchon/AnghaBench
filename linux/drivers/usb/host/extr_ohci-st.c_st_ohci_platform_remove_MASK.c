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
struct usb_ohci_pdata {int /*<<< orphan*/  (* power_off ) (struct platform_device*) ;} ;
struct usb_hcd {int dummy; } ;
struct st_ohci_platform_priv {scalar_t__* clks; } ;
struct TYPE_2__ {int /*<<< orphan*/ * platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int USB_MAX_CLKS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct usb_ohci_pdata* FUNC1 (TYPE_1__*) ; 
 struct st_ohci_platform_priv* FUNC2 (struct usb_hcd*) ; 
 struct usb_ohci_pdata ohci_platform_defaults ; 
 struct usb_hcd* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *dev)
{
	struct usb_hcd *hcd = FUNC3(dev);
	struct usb_ohci_pdata *pdata = FUNC1(&dev->dev);
	struct st_ohci_platform_priv *priv = FUNC2(hcd);
	int clk;

	FUNC6(hcd);

	if (pdata->power_off)
		pdata->power_off(dev);


	for (clk = 0; clk < USB_MAX_CLKS && priv->clks[clk]; clk++)
		FUNC0(priv->clks[clk]);

	FUNC5(hcd);

	if (pdata == &ohci_platform_defaults)
		dev->dev.platform_data = NULL;

	return 0;
}