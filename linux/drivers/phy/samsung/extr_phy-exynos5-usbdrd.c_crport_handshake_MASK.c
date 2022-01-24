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
typedef  int u32 ;
struct exynos5_usbdrd_phy {int /*<<< orphan*/  dev; scalar_t__ reg_phy; } ;

/* Variables and functions */
 int ETIME ; 
 scalar_t__ EXYNOS5_DRD_PHYREG0 ; 
 scalar_t__ EXYNOS5_DRD_PHYREG1 ; 
 unsigned int PHYREG1_CR_ACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct exynos5_usbdrd_phy *phy_drd,
			    u32 val, u32 cmd)
{
	u32 usec = 100;
	unsigned int result;

	FUNC3(val | cmd, phy_drd->reg_phy + EXYNOS5_DRD_PHYREG0);

	do {
		result = FUNC1(phy_drd->reg_phy + EXYNOS5_DRD_PHYREG1);
		if (result & PHYREG1_CR_ACK)
			break;

		FUNC2(1);
	} while (usec-- > 0);

	if (!usec) {
		FUNC0(phy_drd->dev,
			"CRPORT handshake timeout1 (0x%08x)\n", val);
		return -ETIME;
	}

	usec = 100;

	FUNC3(val, phy_drd->reg_phy + EXYNOS5_DRD_PHYREG0);

	do {
		result = FUNC1(phy_drd->reg_phy + EXYNOS5_DRD_PHYREG1);
		if (!(result & PHYREG1_CR_ACK))
			break;

		FUNC2(1);
	} while (usec-- > 0);

	if (!usec) {
		FUNC0(phy_drd->dev,
			"CRPORT handshake timeout2 (0x%08x)\n", val);
		return -ETIME;
	}

	return 0;
}