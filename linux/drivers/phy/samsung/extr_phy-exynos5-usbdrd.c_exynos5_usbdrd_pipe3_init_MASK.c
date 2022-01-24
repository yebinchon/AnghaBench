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
struct exynos5_usbdrd_phy {scalar_t__ reg_phy; } ;

/* Variables and functions */
 scalar_t__ EXYNOS5_DRD_PHYPARAM1 ; 
 scalar_t__ EXYNOS5_DRD_PHYTEST ; 
 int /*<<< orphan*/  PHYPARAM1_PCS_TXDEEMPH ; 
 int /*<<< orphan*/  PHYPARAM1_PCS_TXDEEMPH_MASK ; 
 int /*<<< orphan*/  PHYTEST_POWERDOWN_SSP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct exynos5_usbdrd_phy *phy_drd)
{
	u32 reg;

	reg = FUNC0(phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM1);
	/* Set Tx De-Emphasis level */
	reg &= ~PHYPARAM1_PCS_TXDEEMPH_MASK;
	reg |=	PHYPARAM1_PCS_TXDEEMPH;
	FUNC1(reg, phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM1);

	reg = FUNC0(phy_drd->reg_phy + EXYNOS5_DRD_PHYTEST);
	reg &= ~PHYTEST_POWERDOWN_SSP;
	FUNC1(reg, phy_drd->reg_phy + EXYNOS5_DRD_PHYTEST);
}