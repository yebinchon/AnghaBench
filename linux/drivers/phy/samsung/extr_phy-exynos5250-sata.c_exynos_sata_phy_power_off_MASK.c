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
struct exynos_sata_phy {int /*<<< orphan*/  pmureg; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXYNOS5_SATAPHY_PMU_ENABLE ; 
 int /*<<< orphan*/  SATAPHY_CONTROL_OFFSET ; 
 struct exynos_sata_phy* FUNC0 (struct phy*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct phy *phy)
{
	struct exynos_sata_phy *sata_phy = FUNC0(phy);

	return FUNC1(sata_phy->pmureg, SATAPHY_CONTROL_OFFSET,
			EXYNOS5_SATAPHY_PMU_ENABLE, false);

}