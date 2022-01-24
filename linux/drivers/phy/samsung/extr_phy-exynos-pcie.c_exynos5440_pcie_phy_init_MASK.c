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
struct exynos_pcie_phy {int /*<<< orphan*/  blk_base; int /*<<< orphan*/  phy_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIE_PHY_COMMON_RESET ; 
 int /*<<< orphan*/  PCIE_PHY_DCC_FEEDBACK ; 
 int /*<<< orphan*/  PCIE_PHY_IMPEDANCE ; 
 int /*<<< orphan*/  PCIE_PHY_PLL_BIAS ; 
 int /*<<< orphan*/  PCIE_PHY_PLL_DIV_0 ; 
 int /*<<< orphan*/  PCIE_PHY_PLL_DIV_1 ; 
 int /*<<< orphan*/  PCIE_PHY_TRSV0_DRV_LVL ; 
 int /*<<< orphan*/  PCIE_PHY_TRSV0_EMP_LVL ; 
 int /*<<< orphan*/  PCIE_PHY_TRSV0_LVCC ; 
 int /*<<< orphan*/  PCIE_PHY_TRSV0_RXCDR ; 
 int /*<<< orphan*/  PCIE_PHY_TRSV1_EMP_LVL ; 
 int /*<<< orphan*/  PCIE_PHY_TRSV1_LVCC ; 
 int /*<<< orphan*/  PCIE_PHY_TRSV1_RXCDR ; 
 int /*<<< orphan*/  PCIE_PHY_TRSV2_EMP_LVL ; 
 int /*<<< orphan*/  PCIE_PHY_TRSV2_LVCC ; 
 int /*<<< orphan*/  PCIE_PHY_TRSV2_RXCDR ; 
 int /*<<< orphan*/  PCIE_PHY_TRSV3_EMP_LVL ; 
 int /*<<< orphan*/  PCIE_PHY_TRSV3_LVCC ; 
 int /*<<< orphan*/  PCIE_PHY_TRSV3_RXCDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct exynos_pcie_phy* FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct phy *phy)
{
	struct exynos_pcie_phy *ep = FUNC1(phy);

	/* DCC feedback control off */
	FUNC0(ep->phy_base, 0x29, PCIE_PHY_DCC_FEEDBACK);

	/* set TX/RX impedance */
	FUNC0(ep->phy_base, 0xd5, PCIE_PHY_IMPEDANCE);

	/* set 50Mhz PHY clock */
	FUNC0(ep->phy_base, 0x14, PCIE_PHY_PLL_DIV_0);
	FUNC0(ep->phy_base, 0x12, PCIE_PHY_PLL_DIV_1);

	/* set TX Differential output for lane 0 */
	FUNC0(ep->phy_base, 0x7f, PCIE_PHY_TRSV0_DRV_LVL);

	/* set TX Pre-emphasis Level Control for lane 0 to minimum */
	FUNC0(ep->phy_base, 0x0, PCIE_PHY_TRSV0_EMP_LVL);

	/* set RX clock and data recovery bandwidth */
	FUNC0(ep->phy_base, 0xe7, PCIE_PHY_PLL_BIAS);
	FUNC0(ep->phy_base, 0x82, PCIE_PHY_TRSV0_RXCDR);
	FUNC0(ep->phy_base, 0x82, PCIE_PHY_TRSV1_RXCDR);
	FUNC0(ep->phy_base, 0x82, PCIE_PHY_TRSV2_RXCDR);
	FUNC0(ep->phy_base, 0x82, PCIE_PHY_TRSV3_RXCDR);

	/* change TX Pre-emphasis Level Control for lanes */
	FUNC0(ep->phy_base, 0x39, PCIE_PHY_TRSV0_EMP_LVL);
	FUNC0(ep->phy_base, 0x39, PCIE_PHY_TRSV1_EMP_LVL);
	FUNC0(ep->phy_base, 0x39, PCIE_PHY_TRSV2_EMP_LVL);
	FUNC0(ep->phy_base, 0x39, PCIE_PHY_TRSV3_EMP_LVL);

	/* set LVCC */
	FUNC0(ep->phy_base, 0x20, PCIE_PHY_TRSV0_LVCC);
	FUNC0(ep->phy_base, 0xa0, PCIE_PHY_TRSV1_LVCC);
	FUNC0(ep->phy_base, 0xa0, PCIE_PHY_TRSV2_LVCC);
	FUNC0(ep->phy_base, 0xa0, PCIE_PHY_TRSV3_LVCC);

	/* pulse for common reset */
	FUNC0(ep->blk_base, 1, PCIE_PHY_COMMON_RESET);
	FUNC2(500);
	FUNC0(ep->blk_base, 0, PCIE_PHY_COMMON_RESET);

	return 0;
}