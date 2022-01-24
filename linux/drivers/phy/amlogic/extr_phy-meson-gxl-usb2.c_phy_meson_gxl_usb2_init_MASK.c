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
struct phy_meson_gxl_usb2_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  reset; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct phy_meson_gxl_usb2_priv* FUNC1 (struct phy*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct phy *phy)
{
	struct phy_meson_gxl_usb2_priv *priv = FUNC1(phy);
	int ret;

	ret = FUNC2(priv->reset);
	if (ret)
		return ret;

	ret = FUNC0(priv->clk);
	if (ret)
		return ret;

	return 0;
}