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
struct st_ehci_platform_priv {int /*<<< orphan*/  pwr; int /*<<< orphan*/  rst; scalar_t__* clks; int /*<<< orphan*/  phy; scalar_t__ clk48; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int USB_MAX_CLKS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__,int) ; 
 struct st_ehci_platform_priv* FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct platform_device *dev)
{
	struct usb_hcd *hcd = FUNC7(dev);
	struct st_ehci_platform_priv *priv = FUNC3(hcd);
	int clk, ret;

	ret = FUNC9(priv->pwr);
	if (ret)
		return ret;

	ret = FUNC9(priv->rst);
	if (ret)
		goto err_assert_power;

	/* some SoCs don't have a dedicated 48Mhz clock, but those that do
	   need the rate to be explicitly set */
	if (priv->clk48) {
		ret = FUNC2(priv->clk48, 48000000);
		if (ret)
			goto err_assert_reset;
	}

	for (clk = 0; clk < USB_MAX_CLKS && priv->clks[clk]; clk++) {
		ret = FUNC1(priv->clks[clk]);
		if (ret)
			goto err_disable_clks;
	}

	ret = FUNC5(priv->phy);
	if (ret)
		goto err_disable_clks;

	ret = FUNC6(priv->phy);
	if (ret)
		goto err_exit_phy;

	return 0;

err_exit_phy:
	FUNC4(priv->phy);
err_disable_clks:
	while (--clk >= 0)
		FUNC0(priv->clks[clk]);
err_assert_reset:
	FUNC8(priv->rst);
err_assert_power:
	FUNC8(priv->pwr);

	return ret;
}