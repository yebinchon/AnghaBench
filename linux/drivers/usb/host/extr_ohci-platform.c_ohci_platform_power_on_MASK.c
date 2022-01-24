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
struct ohci_platform_priv {scalar_t__* clks; } ;

/* Variables and functions */
 int OHCI_MAX_CLKS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 struct ohci_platform_priv* FUNC2 (struct usb_hcd*) ; 
 struct usb_hcd* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *dev)
{
	struct usb_hcd *hcd = FUNC3(dev);
	struct ohci_platform_priv *priv = FUNC2(hcd);
	int clk, ret;

	for (clk = 0; clk < OHCI_MAX_CLKS && priv->clks[clk]; clk++) {
		ret = FUNC1(priv->clks[clk]);
		if (ret)
			goto err_disable_clks;
	}

	return 0;

err_disable_clks:
	while (--clk >= 0)
		FUNC0(priv->clks[clk]);

	return ret;
}