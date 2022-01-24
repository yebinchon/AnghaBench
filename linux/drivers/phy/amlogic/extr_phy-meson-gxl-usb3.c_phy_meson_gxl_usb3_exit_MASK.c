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
struct phy_meson_gxl_usb3_priv {int /*<<< orphan*/  clk_phy; int /*<<< orphan*/  clk_peripheral; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct phy_meson_gxl_usb3_priv* FUNC1 (struct phy*) ; 

__attribute__((used)) static int FUNC2(struct phy *phy)
{
	struct phy_meson_gxl_usb3_priv *priv = FUNC1(phy);

	FUNC0(priv->clk_peripheral);
	FUNC0(priv->clk_phy);

	return 0;
}