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
struct phy_usb_instance {TYPE_1__* phy_cfg; } ;
struct phy {int dummy; } ;
struct exynos5_usbdrd_phy {int /*<<< orphan*/  pipeclk; int /*<<< orphan*/  utmiclk; int /*<<< orphan*/  itpclk; TYPE_2__* drv_data; int /*<<< orphan*/  ref_clk; scalar_t__ vbus_boost; int /*<<< orphan*/  dev; scalar_t__ vbus; } ;
struct TYPE_4__ {int /*<<< orphan*/  has_common_clk_gate; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* phy_isol ) (struct phy_usb_instance*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct phy_usb_instance* FUNC4 (struct phy*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct phy_usb_instance*,int /*<<< orphan*/ ) ; 
 struct exynos5_usbdrd_phy* FUNC8 (struct phy_usb_instance*) ; 

__attribute__((used)) static int FUNC9(struct phy *phy)
{
	int ret;
	struct phy_usb_instance *inst = FUNC4(phy);
	struct exynos5_usbdrd_phy *phy_drd = FUNC8(inst);

	FUNC2(phy_drd->dev, "Request to power_on usbdrd_phy phy\n");

	FUNC1(phy_drd->ref_clk);
	if (!phy_drd->drv_data->has_common_clk_gate) {
		FUNC1(phy_drd->pipeclk);
		FUNC1(phy_drd->utmiclk);
		FUNC1(phy_drd->itpclk);
	}

	/* Enable VBUS supply */
	if (phy_drd->vbus_boost) {
		ret = FUNC6(phy_drd->vbus_boost);
		if (ret) {
			FUNC3(phy_drd->dev,
				"Failed to enable VBUS boost supply\n");
			goto fail_vbus;
		}
	}

	if (phy_drd->vbus) {
		ret = FUNC6(phy_drd->vbus);
		if (ret) {
			FUNC3(phy_drd->dev, "Failed to enable VBUS supply\n");
			goto fail_vbus_boost;
		}
	}

	/* Power-on PHY*/
	inst->phy_cfg->phy_isol(inst, 0);

	return 0;

fail_vbus_boost:
	if (phy_drd->vbus_boost)
		FUNC5(phy_drd->vbus_boost);

fail_vbus:
	FUNC0(phy_drd->ref_clk);
	if (!phy_drd->drv_data->has_common_clk_gate) {
		FUNC0(phy_drd->itpclk);
		FUNC0(phy_drd->utmiclk);
		FUNC0(phy_drd->pipeclk);
	}

	return ret;
}