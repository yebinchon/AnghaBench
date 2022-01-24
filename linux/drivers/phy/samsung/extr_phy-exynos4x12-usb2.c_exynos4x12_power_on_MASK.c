#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct samsung_usb2_phy_instance {TYPE_2__* cfg; int /*<<< orphan*/  ext_cnt; struct samsung_usb2_phy_driver* drv; } ;
struct samsung_usb2_phy_driver {struct samsung_usb2_phy_instance* instances; int /*<<< orphan*/  reg_sys; TYPE_1__* cfg; } ;
struct TYPE_4__ {size_t id; } ;
struct TYPE_3__ {scalar_t__ has_mode_switch; } ;

/* Variables and functions */
 size_t EXYNOS4x12_DEVICE ; 
 size_t EXYNOS4x12_HOST ; 
 size_t EXYNOS4x12_HSIC0 ; 
 size_t EXYNOS4x12_HSIC1 ; 
 int /*<<< orphan*/  EXYNOS_4x12_MODE_SWITCH_DEVICE ; 
 int /*<<< orphan*/  EXYNOS_4x12_MODE_SWITCH_HOST ; 
 int /*<<< orphan*/  EXYNOS_4x12_MODE_SWITCH_MASK ; 
 int /*<<< orphan*/  EXYNOS_4x12_MODE_SWITCH_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct samsung_usb2_phy_instance*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct samsung_usb2_phy_instance *inst)
{
	struct samsung_usb2_phy_driver *drv = inst->drv;

	if (inst->ext_cnt++ > 0)
		return 0;

	if (inst->cfg->id == EXYNOS4x12_HOST) {
		FUNC1(drv->reg_sys, EXYNOS_4x12_MODE_SWITCH_OFFSET,
						EXYNOS_4x12_MODE_SWITCH_MASK,
						EXYNOS_4x12_MODE_SWITCH_HOST);
		FUNC0(&drv->instances[EXYNOS4x12_DEVICE]);
	}

	if (inst->cfg->id == EXYNOS4x12_DEVICE && drv->cfg->has_mode_switch)
		FUNC1(drv->reg_sys, EXYNOS_4x12_MODE_SWITCH_OFFSET,
						EXYNOS_4x12_MODE_SWITCH_MASK,
						EXYNOS_4x12_MODE_SWITCH_DEVICE);

	if (inst->cfg->id == EXYNOS4x12_HSIC0 ||
		inst->cfg->id == EXYNOS4x12_HSIC1) {
		FUNC0(&drv->instances[EXYNOS4x12_DEVICE]);
		FUNC0(&drv->instances[EXYNOS4x12_HOST]);
	}

	FUNC0(inst);

	return 0;
}