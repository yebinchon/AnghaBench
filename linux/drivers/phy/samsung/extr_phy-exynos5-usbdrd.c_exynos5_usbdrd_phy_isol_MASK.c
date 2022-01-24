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
struct phy_usb_instance {int /*<<< orphan*/  pmu_offset; int /*<<< orphan*/  reg_pmu; } ;

/* Variables and functions */
 unsigned int EXYNOS4_PHY_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC1(struct phy_usb_instance *inst,
						unsigned int on)
{
	unsigned int val;

	if (!inst->reg_pmu)
		return;

	val = on ? 0 : EXYNOS4_PHY_ENABLE;

	FUNC0(inst->reg_pmu, inst->pmu_offset,
			   EXYNOS4_PHY_ENABLE, val);
}