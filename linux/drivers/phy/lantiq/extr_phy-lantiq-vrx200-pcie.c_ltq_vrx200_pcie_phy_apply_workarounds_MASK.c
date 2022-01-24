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
struct reg_default {int def; int /*<<< orphan*/  reg; } ;
struct phy {int dummy; } ;
struct ltq_vrx200_pcie_phy_priv {int /*<<< orphan*/  phy_regmap; } ;

/* Variables and functions */
 int FUNC0 (struct reg_default const*) ; 
#define  PCIE_PHY_RX1_CTRL1 133 
#define  PCIE_PHY_RX1_CTRL1_LOAD_EN 132 
#define  PCIE_PHY_TX1_CTRL1 131 
#define  PCIE_PHY_TX1_CTRL1_LOAD_EN 130 
 int /*<<< orphan*/  PCIE_PHY_TX1_MOD1 ; 
 int /*<<< orphan*/  PCIE_PHY_TX1_MOD2 ; 
 int /*<<< orphan*/  PCIE_PHY_TX1_MOD3 ; 
#define  PCIE_PHY_TX2_CTRL1 129 
#define  PCIE_PHY_TX2_CTRL1_LOAD_EN 128 
 int /*<<< orphan*/  PCIE_PHY_TX2_MOD1 ; 
 int /*<<< orphan*/  PCIE_PHY_TX2_MOD2 ; 
 int /*<<< orphan*/  PCIE_PHY_TX2_MOD3 ; 
 struct ltq_vrx200_pcie_phy_priv* FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct phy *phy)
{
	struct ltq_vrx200_pcie_phy_priv *priv = FUNC1(phy);
	static const struct reg_default slices[] =  {
		{
			.reg = PCIE_PHY_TX1_CTRL1,
			.def = PCIE_PHY_TX1_CTRL1_LOAD_EN,
		},
		{
			.reg = PCIE_PHY_TX2_CTRL1,
			.def = PCIE_PHY_TX2_CTRL1_LOAD_EN,
		},
		{
			.reg = PCIE_PHY_RX1_CTRL1,
			.def = PCIE_PHY_RX1_CTRL1_LOAD_EN,
		}
	};
	int i;

	for (i = 0; i < FUNC0(slices); i++) {
		/* enable load_en */
		FUNC2(priv->phy_regmap, slices[i].reg,
				   slices[i].def, slices[i].def);

		FUNC4(1);

		/* disable load_en */
		FUNC2(priv->phy_regmap, slices[i].reg,
				   slices[i].def, 0x0);
	}

	for (i = 0; i < 5; i++) {
		/* TX2 modulation */
		FUNC3(priv->phy_regmap, PCIE_PHY_TX2_MOD1, 0x1ffe);
		FUNC3(priv->phy_regmap, PCIE_PHY_TX2_MOD2, 0xfffe);
		FUNC3(priv->phy_regmap, PCIE_PHY_TX2_MOD3, 0x0601);
		FUNC5(1000, 2000);
		FUNC3(priv->phy_regmap, PCIE_PHY_TX2_MOD3, 0x0001);

		/* TX1 modulation */
		FUNC3(priv->phy_regmap, PCIE_PHY_TX1_MOD1, 0x1ffe);
		FUNC3(priv->phy_regmap, PCIE_PHY_TX1_MOD2, 0xfffe);
		FUNC3(priv->phy_regmap, PCIE_PHY_TX1_MOD3, 0x0601);
		FUNC5(1000, 2000);
		FUNC3(priv->phy_regmap, PCIE_PHY_TX1_MOD3, 0x0001);
	}
}