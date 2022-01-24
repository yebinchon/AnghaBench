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
struct phy {int dummy; } ;
struct ltq_vrx200_pcie_phy_priv {int /*<<< orphan*/  phy_regmap; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  PCIE_PHY_PLL_A_CTRL2 ; 
 int PCIE_PHY_PLL_A_CTRL2_LF_MODE_EN ; 
 int /*<<< orphan*/  PCIE_PHY_PLL_A_CTRL3 ; 
 int PCIE_PHY_PLL_A_CTRL3_MMD_MASK ; 
 int /*<<< orphan*/  PCIE_PHY_PLL_CTRL1 ; 
 int /*<<< orphan*/  PCIE_PHY_PLL_CTRL2 ; 
 int PCIE_PHY_PLL_CTRL2_CONST_SDM_EN ; 
 int PCIE_PHY_PLL_CTRL2_CONST_SDM_MASK ; 
 int PCIE_PHY_PLL_CTRL2_PLL_SDM_EN ; 
 int /*<<< orphan*/  PCIE_PHY_PLL_CTRL3 ; 
 int PCIE_PHY_PLL_CTRL3_EXT_MMD_DIV_RATIO_EN ; 
 int PCIE_PHY_PLL_CTRL3_EXT_MMD_DIV_RATIO_MASK ; 
 int /*<<< orphan*/  PCIE_PHY_PLL_CTRL4 ; 
 int /*<<< orphan*/  PCIE_PHY_PLL_CTRL5 ; 
 int /*<<< orphan*/  PCIE_PHY_PLL_CTRL6 ; 
 int /*<<< orphan*/  PCIE_PHY_PLL_CTRL7 ; 
 struct ltq_vrx200_pcie_phy_priv* FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct phy *phy)
{
	struct ltq_vrx200_pcie_phy_priv *priv = FUNC1(phy);

	FUNC2(priv->phy_regmap, PCIE_PHY_PLL_CTRL3,
			   PCIE_PHY_PLL_CTRL3_EXT_MMD_DIV_RATIO_EN, 0x0000);

	FUNC2(priv->phy_regmap, PCIE_PHY_PLL_CTRL3,
			   PCIE_PHY_PLL_CTRL3_EXT_MMD_DIV_RATIO_MASK, 0x0000);

	FUNC2(priv->phy_regmap, PCIE_PHY_PLL_CTRL2,
			   PCIE_PHY_PLL_CTRL2_PLL_SDM_EN,
			   PCIE_PHY_PLL_CTRL2_PLL_SDM_EN);

	FUNC2(priv->phy_regmap, PCIE_PHY_PLL_CTRL2,
			   PCIE_PHY_PLL_CTRL2_CONST_SDM_EN,
			   PCIE_PHY_PLL_CTRL2_CONST_SDM_EN);

	FUNC2(priv->phy_regmap, PCIE_PHY_PLL_A_CTRL3,
			   PCIE_PHY_PLL_A_CTRL3_MMD_MASK,
			   FUNC0(PCIE_PHY_PLL_A_CTRL3_MMD_MASK, 0x1));

	FUNC2(priv->phy_regmap, PCIE_PHY_PLL_A_CTRL2,
			   PCIE_PHY_PLL_A_CTRL2_LF_MODE_EN, 0x0000);

	/* const_sdm */
	FUNC3(priv->phy_regmap, PCIE_PHY_PLL_CTRL1, 0x38e4);

	FUNC2(priv->phy_regmap, PCIE_PHY_PLL_CTRL2,
			   PCIE_PHY_PLL_CTRL2_CONST_SDM_MASK,
			   FUNC0(PCIE_PHY_PLL_CTRL2_CONST_SDM_MASK,
				      0xee));

	/* pllmod */
	FUNC3(priv->phy_regmap, PCIE_PHY_PLL_CTRL7, 0x0002);
	FUNC3(priv->phy_regmap, PCIE_PHY_PLL_CTRL6, 0x3a04);
	FUNC3(priv->phy_regmap, PCIE_PHY_PLL_CTRL5, 0xfae3);
	FUNC3(priv->phy_regmap, PCIE_PHY_PLL_CTRL4, 0x1b72);
}