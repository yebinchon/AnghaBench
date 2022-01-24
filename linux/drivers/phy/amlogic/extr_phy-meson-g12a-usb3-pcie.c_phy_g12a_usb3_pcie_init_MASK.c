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
struct phy_g12a_usb3_pcie_priv {scalar_t__ mode; int /*<<< orphan*/  regmap; int /*<<< orphan*/  reset; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PHY_R0 ; 
 int /*<<< orphan*/  PHY_R0_PCIE_POWER_STATE ; 
 scalar_t__ PHY_TYPE_USB3 ; 
 int FUNC1 (struct phy*) ; 
 struct phy_g12a_usb3_pcie_priv* FUNC2 (struct phy*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct phy *phy)
{
	struct phy_g12a_usb3_pcie_priv *priv = FUNC2(phy);
	int ret;

	ret = FUNC4(priv->reset);
	if (ret)
		return ret;

	if (priv->mode == PHY_TYPE_USB3)
		return FUNC1(phy);

	/* Power UP PCIE */
	/* TODO figure out when the bootloader has set USB3 mode before */
	FUNC3(priv->regmap, PHY_R0,
			   PHY_R0_PCIE_POWER_STATE,
			   FUNC0(PHY_R0_PCIE_POWER_STATE, 0x1c));

	return 0;
}