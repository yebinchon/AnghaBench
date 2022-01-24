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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {scalar_t__ speed; scalar_t__ phy_type; scalar_t__ ulpi_fs_ls; } ;
struct TYPE_3__ {scalar_t__ hs_phy_type; scalar_t__ fs_phy_type; } ;
struct dwc2_hsotg {int /*<<< orphan*/  dev; TYPE_2__ params; TYPE_1__ hw_params; } ;

/* Variables and functions */
 scalar_t__ DWC2_PHY_TYPE_PARAM_FS ; 
 scalar_t__ DWC2_SPEED_PARAM_FULL ; 
 scalar_t__ DWC2_SPEED_PARAM_LOW ; 
 scalar_t__ GHWCFG2_FS_PHY_TYPE_DEDICATED ; 
 scalar_t__ GHWCFG2_HS_PHY_TYPE_ULPI ; 
 int /*<<< orphan*/  GUSBCFG ; 
 int /*<<< orphan*/  GUSBCFG_ULPI_CLK_SUSP_M ; 
 int /*<<< orphan*/  GUSBCFG_ULPI_FS_LS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct dwc2_hsotg*,int) ; 
 int FUNC2 (struct dwc2_hsotg*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc2_hsotg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct dwc2_hsotg *hsotg, bool select_phy)
{
	u32 usbcfg;
	int retval = 0;

	if ((hsotg->params.speed == DWC2_SPEED_PARAM_FULL ||
	     hsotg->params.speed == DWC2_SPEED_PARAM_LOW) &&
	    hsotg->params.phy_type == DWC2_PHY_TYPE_PARAM_FS) {
		/* If FS/LS mode with FS/LS PHY */
		retval = FUNC1(hsotg, select_phy);
		if (retval)
			return retval;
	} else {
		/* High speed PHY */
		retval = FUNC2(hsotg, select_phy);
		if (retval)
			return retval;
	}

	if (hsotg->hw_params.hs_phy_type == GHWCFG2_HS_PHY_TYPE_ULPI &&
	    hsotg->hw_params.fs_phy_type == GHWCFG2_FS_PHY_TYPE_DEDICATED &&
	    hsotg->params.ulpi_fs_ls) {
		FUNC0(hsotg->dev, "Setting ULPI FSLS\n");
		usbcfg = FUNC3(hsotg, GUSBCFG);
		usbcfg |= GUSBCFG_ULPI_FS_LS;
		usbcfg |= GUSBCFG_ULPI_CLK_SUSP_M;
		FUNC4(hsotg, usbcfg, GUSBCFG);
	} else {
		usbcfg = FUNC3(hsotg, GUSBCFG);
		usbcfg &= ~GUSBCFG_ULPI_FS_LS;
		usbcfg &= ~GUSBCFG_ULPI_CLK_SUSP_M;
		FUNC4(hsotg, usbcfg, GUSBCFG);
	}

	return retval;
}