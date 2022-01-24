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
 int /*<<< orphan*/  PCIE_PHY_PLL_A_CTRL1 ; 
 int /*<<< orphan*/  PCIE_PHY_PLL_A_CTRL2 ; 
 int /*<<< orphan*/  PCIE_PHY_PLL_A_CTRL3 ; 
 int /*<<< orphan*/  PCIE_PHY_RX1_A_CTRL ; 
 int /*<<< orphan*/  PCIE_PHY_RX1_CDR ; 
 int /*<<< orphan*/  PCIE_PHY_RX1_EI ; 
 int /*<<< orphan*/  PCIE_PHY_TX1_A_CTRL1 ; 
 int /*<<< orphan*/  PCIE_PHY_TX1_A_CTRL2 ; 
 int /*<<< orphan*/  PCIE_PHY_TX1_CTRL1 ; 
 int PCIE_PHY_TX1_CTRL1_FORCE_EN ; 
 int /*<<< orphan*/  PCIE_PHY_TX1_CTRL2 ; 
 int /*<<< orphan*/  PCIE_PHY_TX1_CTRL3 ; 
 int /*<<< orphan*/  PCIE_PHY_TX2_A_CTRL2 ; 
 int /*<<< orphan*/  PCIE_PHY_TX2_CTRL2 ; 
 struct ltq_vrx200_pcie_phy_priv* FUNC0 (struct phy*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct phy *phy)
{
	struct ltq_vrx200_pcie_phy_priv *priv = FUNC0(phy);

	/* PLL Setting */
	FUNC2(priv->phy_regmap, PCIE_PHY_PLL_A_CTRL1, 0x120e);

	/* increase the bias reference voltage */
	FUNC2(priv->phy_regmap, PCIE_PHY_PLL_A_CTRL2, 0x39d7);
	FUNC2(priv->phy_regmap, PCIE_PHY_PLL_A_CTRL3, 0x0900);

	/* Endcnt */
	FUNC2(priv->phy_regmap, PCIE_PHY_RX1_EI, 0x0004);
	FUNC2(priv->phy_regmap, PCIE_PHY_RX1_A_CTRL, 0x6803);

	FUNC1(priv->phy_regmap, PCIE_PHY_TX1_CTRL1,
			   PCIE_PHY_TX1_CTRL1_FORCE_EN,
			   PCIE_PHY_TX1_CTRL1_FORCE_EN);

	/* predrv_ser_en */
	FUNC2(priv->phy_regmap, PCIE_PHY_TX1_A_CTRL2, 0x0706);

	/* ctrl_lim */
	FUNC2(priv->phy_regmap, PCIE_PHY_TX1_CTRL3, 0x1fff);

	/* ctrl */
	FUNC2(priv->phy_regmap, PCIE_PHY_TX1_A_CTRL1, 0x0810);

	/* predrv_ser_en */
	FUNC1(priv->phy_regmap, PCIE_PHY_TX2_A_CTRL2, 0x7f00,
			   0x4700);

	/* RTERM */
	FUNC2(priv->phy_regmap, PCIE_PHY_TX1_CTRL2, 0x2e00);

	/* Improved 100MHz clock output  */
	FUNC2(priv->phy_regmap, PCIE_PHY_TX2_CTRL2, 0x3096);
	FUNC2(priv->phy_regmap, PCIE_PHY_TX2_A_CTRL2, 0x4707);

	/* Reduced CDR BW to avoid glitches */
	FUNC2(priv->phy_regmap, PCIE_PHY_RX1_CDR, 0x0235);
}