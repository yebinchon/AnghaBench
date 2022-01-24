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
struct ci_hdrc {TYPE_1__* platdata; } ;
struct TYPE_2__ {int flags; int phy_mode; } ;

/* Variables and functions */
 int CI_HDRC_OVERRIDE_PHY_CONTROL ; 
#define  USBPHY_INTERFACE_MODE_HSIC 132 
#define  USBPHY_INTERFACE_MODE_SERIAL 131 
#define  USBPHY_INTERFACE_MODE_ULPI 130 
#define  USBPHY_INTERFACE_MODE_UTMI 129 
#define  USBPHY_INTERFACE_MODE_UTMIW 128 
 int FUNC0 (struct ci_hdrc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ci_hdrc*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct ci_hdrc *ci)
{
	int ret;

	if (ci->platdata->flags & CI_HDRC_OVERRIDE_PHY_CONTROL)
		return 0;

	switch (ci->platdata->phy_mode) {
	case USBPHY_INTERFACE_MODE_UTMI:
	case USBPHY_INTERFACE_MODE_UTMIW:
	case USBPHY_INTERFACE_MODE_HSIC:
		ret = FUNC0(ci);
		if (!ret)
			FUNC2();
		else
			return ret;
		FUNC1(ci);
		break;
	case USBPHY_INTERFACE_MODE_ULPI:
	case USBPHY_INTERFACE_MODE_SERIAL:
		FUNC1(ci);
		ret = FUNC0(ci);
		if (ret)
			return ret;
		break;
	default:
		ret = FUNC0(ci);
		if (!ret)
			FUNC2();
	}

	return ret;
}