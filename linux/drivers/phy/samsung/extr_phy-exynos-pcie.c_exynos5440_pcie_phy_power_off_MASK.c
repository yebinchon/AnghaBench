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
typedef  int /*<<< orphan*/  u32 ;
struct phy {int /*<<< orphan*/  dev; } ;
struct exynos_pcie_phy {scalar_t__ phy_base; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  PCIE_PHY_COMMON_PD_CMN ; 
 int /*<<< orphan*/  PCIE_PHY_COMMON_POWER ; 
 scalar_t__ PCIE_PHY_PLL_LOCKED ; 
 int /*<<< orphan*/  PCIE_PHY_TRSV0_PD_TSV ; 
 int /*<<< orphan*/  PCIE_PHY_TRSV0_POWER ; 
 int /*<<< orphan*/  PCIE_PHY_TRSV1_PD_TSV ; 
 int /*<<< orphan*/  PCIE_PHY_TRSV1_POWER ; 
 int /*<<< orphan*/  PCIE_PHY_TRSV2_PD_TSV ; 
 int /*<<< orphan*/  PCIE_PHY_TRSV2_POWER ; 
 int /*<<< orphan*/  PCIE_PHY_TRSV3_PD_TSV ; 
 int /*<<< orphan*/  PCIE_PHY_TRSV3_POWER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct exynos_pcie_phy* FUNC3 (struct phy*) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC5(struct phy *phy)
{
	struct exynos_pcie_phy *ep = FUNC3(phy);
	u32 val;

	if (FUNC4(ep->phy_base + PCIE_PHY_PLL_LOCKED, val,
				(val != 0), 1, 500)) {
		FUNC0(&phy->dev, "PLL Locked: 0x%x\n", val);
		return -ETIMEDOUT;
	}

	val = FUNC1(ep->phy_base, PCIE_PHY_COMMON_POWER);
	val |= PCIE_PHY_COMMON_PD_CMN;
	FUNC2(ep->phy_base, val, PCIE_PHY_COMMON_POWER);

	val = FUNC1(ep->phy_base, PCIE_PHY_TRSV0_POWER);
	val |= PCIE_PHY_TRSV0_PD_TSV;
	FUNC2(ep->phy_base, val, PCIE_PHY_TRSV0_POWER);

	val = FUNC1(ep->phy_base, PCIE_PHY_TRSV1_POWER);
	val |= PCIE_PHY_TRSV1_PD_TSV;
	FUNC2(ep->phy_base, val, PCIE_PHY_TRSV1_POWER);

	val = FUNC1(ep->phy_base, PCIE_PHY_TRSV2_POWER);
	val |= PCIE_PHY_TRSV2_PD_TSV;
	FUNC2(ep->phy_base, val, PCIE_PHY_TRSV2_POWER);

	val = FUNC1(ep->phy_base, PCIE_PHY_TRSV3_POWER);
	val |= PCIE_PHY_TRSV3_PD_TSV;
	FUNC2(ep->phy_base, val, PCIE_PHY_TRSV3_POWER);

	return 0;
}