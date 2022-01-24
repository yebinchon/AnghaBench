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
 scalar_t__ EXYNOS5_DRD_PHYREG0 ; 
 int /*<<< orphan*/  PHYREG0_CR_CAP_ADDR ; 
 int /*<<< orphan*/  PHYREG0_CR_CAP_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PHYREG0_CR_WRITE ; 
 int FUNC1 (struct exynos5_usbdrd_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct exynos5_usbdrd_phy *phy_drd,
			     u32 addr, u32 data)
{
	int ret;

	/* Write Address */
	FUNC2(FUNC0(addr),
	       phy_drd->reg_phy + EXYNOS5_DRD_PHYREG0);
	ret = FUNC1(phy_drd, FUNC0(addr),
			       PHYREG0_CR_CAP_ADDR);
	if (ret)
		return ret;

	/* Write Data */
	FUNC2(FUNC0(data),
	       phy_drd->reg_phy + EXYNOS5_DRD_PHYREG0);
	ret = FUNC1(phy_drd, FUNC0(data),
			       PHYREG0_CR_CAP_DATA);
	if (ret)
		return ret;

	ret = FUNC1(phy_drd, FUNC0(data),
			       PHYREG0_CR_WRITE);

	return ret;
}