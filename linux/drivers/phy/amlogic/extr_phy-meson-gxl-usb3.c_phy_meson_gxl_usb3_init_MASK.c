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
struct phy_meson_gxl_usb3_priv {int /*<<< orphan*/  clk_phy; int /*<<< orphan*/  clk_peripheral; int /*<<< orphan*/  regmap; int /*<<< orphan*/  mode; int /*<<< orphan*/  reset; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  USB_R1 ; 
 int /*<<< orphan*/  USB_R1_U3H_FLADJ_30MHZ_REG_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct phy_meson_gxl_usb3_priv* FUNC3 (struct phy*) ; 
 int FUNC4 (struct phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct phy *phy)
{
	struct phy_meson_gxl_usb3_priv *priv = FUNC3(phy);
	int ret;

	ret = FUNC6(priv->reset);
	if (ret)
		goto err;

	ret = FUNC2(priv->clk_phy);
	if (ret)
		goto err;

	ret = FUNC2(priv->clk_peripheral);
	if (ret)
		goto err_disable_clk_phy;

	ret = FUNC4(phy, priv->mode, 0);
	if (ret)
		goto err_disable_clk_peripheral;

	FUNC5(priv->regmap, USB_R1,
			   USB_R1_U3H_FLADJ_30MHZ_REG_MASK,
			   FUNC0(USB_R1_U3H_FLADJ_30MHZ_REG_MASK, 0x20));

	return 0;

err_disable_clk_peripheral:
	FUNC1(priv->clk_peripheral);
err_disable_clk_phy:
	FUNC1(priv->clk_phy);
err:
	return ret;
}