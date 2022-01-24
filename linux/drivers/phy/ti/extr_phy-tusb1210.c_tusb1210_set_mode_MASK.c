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
struct tusb1210 {int /*<<< orphan*/  ulpi; } ;
struct phy {int dummy; } ;
typedef  enum phy_mode { ____Placeholder_phy_mode } phy_mode ;

/* Variables and functions */
#define  PHY_MODE_USB_DEVICE 129 
#define  PHY_MODE_USB_HOST 128 
 int /*<<< orphan*/  ULPI_OTG_CTRL ; 
 int ULPI_OTG_CTRL_DM_PULLDOWN ; 
 int ULPI_OTG_CTRL_DP_PULLDOWN ; 
 int ULPI_OTG_CTRL_DRVVBUS ; 
 int ULPI_OTG_CTRL_DRVVBUS_EXT ; 
 int ULPI_OTG_CTRL_ID_PULLUP ; 
 struct tusb1210* FUNC0 (struct phy*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct phy *phy, enum phy_mode mode, int submode)
{
	struct tusb1210 *tusb = FUNC0(phy);
	int ret;

	ret = FUNC1(tusb->ulpi, ULPI_OTG_CTRL);
	if (ret < 0)
		return ret;

	switch (mode) {
	case PHY_MODE_USB_HOST:
		ret |= (ULPI_OTG_CTRL_DRVVBUS_EXT
			| ULPI_OTG_CTRL_ID_PULLUP
			| ULPI_OTG_CTRL_DP_PULLDOWN
			| ULPI_OTG_CTRL_DM_PULLDOWN);
		FUNC2(tusb->ulpi, ULPI_OTG_CTRL, ret);
		ret |= ULPI_OTG_CTRL_DRVVBUS;
		break;
	case PHY_MODE_USB_DEVICE:
		ret &= ~(ULPI_OTG_CTRL_DRVVBUS
			 | ULPI_OTG_CTRL_DP_PULLDOWN
			 | ULPI_OTG_CTRL_DM_PULLDOWN);
		FUNC2(tusb->ulpi, ULPI_OTG_CTRL, ret);
		ret &= ~ULPI_OTG_CTRL_DRVVBUS_EXT;
		break;
	default:
		/* nothing */
		return 0;
	}

	return FUNC2(tusb->ulpi, ULPI_OTG_CTRL, ret);
}