#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct samsung_usb2_phy_instance {TYPE_1__* cfg; struct samsung_usb2_phy_driver* drv; } ;
struct samsung_usb2_phy_driver {int ref_reg_val; scalar_t__ reg_phy; } ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
#define  S5PV210_DEVICE 129 
#define  S5PV210_HOST 128 
 scalar_t__ S5PV210_UPHYCLK ; 
 scalar_t__ S5PV210_UPHYPWR ; 
 int S5PV210_UPHYPWR_PHY0 ; 
 int S5PV210_UPHYPWR_PHY1 ; 
 scalar_t__ S5PV210_UPHYRST ; 
 int S5PV210_URSTCON_HOST_LINK_ALL ; 
 int S5PV210_URSTCON_PHY0 ; 
 int S5PV210_URSTCON_PHY1_ALL ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct samsung_usb2_phy_instance *inst, bool on)
{
	struct samsung_usb2_phy_driver *drv = inst->drv;
	u32 rstbits = 0;
	u32 phypwr = 0;
	u32 rst;
	u32 pwr;

	switch (inst->cfg->id) {
	case S5PV210_DEVICE:
		phypwr =	S5PV210_UPHYPWR_PHY0;
		rstbits =	S5PV210_URSTCON_PHY0;
		break;
	case S5PV210_HOST:
		phypwr =	S5PV210_UPHYPWR_PHY1;
		rstbits =	S5PV210_URSTCON_PHY1_ALL |
				S5PV210_URSTCON_HOST_LINK_ALL;
		break;
	}

	if (on) {
		FUNC2(drv->ref_reg_val, drv->reg_phy + S5PV210_UPHYCLK);

		pwr = FUNC0(drv->reg_phy + S5PV210_UPHYPWR);
		pwr &= ~phypwr;
		FUNC2(pwr, drv->reg_phy + S5PV210_UPHYPWR);

		rst = FUNC0(drv->reg_phy + S5PV210_UPHYRST);
		rst |= rstbits;
		FUNC2(rst, drv->reg_phy + S5PV210_UPHYRST);
		FUNC1(10);
		rst &= ~rstbits;
		FUNC2(rst, drv->reg_phy + S5PV210_UPHYRST);
	} else {
		pwr = FUNC0(drv->reg_phy + S5PV210_UPHYPWR);
		pwr |= phypwr;
		FUNC2(pwr, drv->reg_phy + S5PV210_UPHYPWR);
	}
}