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
struct phy_meson_gxl_usb2_priv {int is_enabled; int /*<<< orphan*/  mode; int /*<<< orphan*/  regmap; } ;
struct phy {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  U2P_R0 ; 
 int /*<<< orphan*/  U2P_R0_POWER_ON_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct phy_meson_gxl_usb2_priv* FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  FUNC2 (struct phy*) ; 
 int FUNC3 (struct phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct phy *phy)
{
	struct phy_meson_gxl_usb2_priv *priv = FUNC1(phy);
	int ret;

	priv->is_enabled = 1;

	/* power on the PHY by taking it out of reset mode */
	FUNC4(priv->regmap, U2P_R0, U2P_R0_POWER_ON_RESET, 0);

	ret = FUNC3(phy, priv->mode, 0);
	if (ret) {
		FUNC2(phy);

		FUNC0(&phy->dev, "Failed to initialize PHY with mode %d\n",
			priv->mode);
		return ret;
	}

	return 0;
}