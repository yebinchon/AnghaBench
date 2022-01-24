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
struct phy_usb_instance {TYPE_2__* phy_cfg; } ;
struct phy {int dummy; } ;
struct exynos5_usbdrd_phy {int /*<<< orphan*/  utmiclk; int /*<<< orphan*/  pipeclk; int /*<<< orphan*/  itpclk; TYPE_1__* drv_data; int /*<<< orphan*/  ref_clk; scalar_t__ vbus_boost; scalar_t__ vbus; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* phy_isol ) (struct phy_usb_instance*,int) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  has_common_clk_gate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct phy_usb_instance* FUNC2 (struct phy*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_usb_instance*,int) ; 
 struct exynos5_usbdrd_phy* FUNC5 (struct phy_usb_instance*) ; 

__attribute__((used)) static int FUNC6(struct phy *phy)
{
	struct phy_usb_instance *inst = FUNC2(phy);
	struct exynos5_usbdrd_phy *phy_drd = FUNC5(inst);

	FUNC1(phy_drd->dev, "Request to power_off usbdrd_phy phy\n");

	/* Power-off the PHY */
	inst->phy_cfg->phy_isol(inst, 1);

	/* Disable VBUS supply */
	if (phy_drd->vbus)
		FUNC3(phy_drd->vbus);
	if (phy_drd->vbus_boost)
		FUNC3(phy_drd->vbus_boost);

	FUNC0(phy_drd->ref_clk);
	if (!phy_drd->drv_data->has_common_clk_gate) {
		FUNC0(phy_drd->itpclk);
		FUNC0(phy_drd->pipeclk);
		FUNC0(phy_drd->utmiclk);
	}

	return 0;
}