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
typedef  int u32 ;
struct TYPE_4__ {scalar_t__ lpm; } ;
struct ci_hdrc {TYPE_2__ hw_bank; TYPE_1__* platdata; } ;
struct TYPE_3__ {int phy_mode; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int DEVLC_PTW ; 
 int DEVLC_STS ; 
 int /*<<< orphan*/  OP_DEVLC ; 
 int /*<<< orphan*/  OP_PORTSC ; 
 int FUNC1 (int) ; 
 int PORTSC_PTW ; 
 int PORTSC_STS ; 
 int PTS_HSIC ; 
 int PTS_SERIAL ; 
 int PTS_ULPI ; 
 int PTS_UTMI ; 
#define  USBPHY_INTERFACE_MODE_HSIC 132 
#define  USBPHY_INTERFACE_MODE_SERIAL 131 
#define  USBPHY_INTERFACE_MODE_ULPI 130 
#define  USBPHY_INTERFACE_MODE_UTMI 129 
#define  USBPHY_INTERFACE_MODE_UTMIW 128 
 int /*<<< orphan*/  FUNC2 (struct ci_hdrc*,int /*<<< orphan*/ ,int,int) ; 

void FUNC3(struct ci_hdrc *ci)
{
	u32 portsc, lpm, sts = 0;

	switch (ci->platdata->phy_mode) {
	case USBPHY_INTERFACE_MODE_UTMI:
		portsc = FUNC1(PTS_UTMI);
		lpm = FUNC0(PTS_UTMI);
		break;
	case USBPHY_INTERFACE_MODE_UTMIW:
		portsc = FUNC1(PTS_UTMI) | PORTSC_PTW;
		lpm = FUNC0(PTS_UTMI) | DEVLC_PTW;
		break;
	case USBPHY_INTERFACE_MODE_ULPI:
		portsc = FUNC1(PTS_ULPI);
		lpm = FUNC0(PTS_ULPI);
		break;
	case USBPHY_INTERFACE_MODE_SERIAL:
		portsc = FUNC1(PTS_SERIAL);
		lpm = FUNC0(PTS_SERIAL);
		sts = 1;
		break;
	case USBPHY_INTERFACE_MODE_HSIC:
		portsc = FUNC1(PTS_HSIC);
		lpm = FUNC0(PTS_HSIC);
		break;
	default:
		return;
	}

	if (ci->hw_bank.lpm) {
		FUNC2(ci, OP_DEVLC, FUNC0(7) | DEVLC_PTW, lpm);
		if (sts)
			FUNC2(ci, OP_DEVLC, DEVLC_STS, DEVLC_STS);
	} else {
		FUNC2(ci, OP_PORTSC, FUNC1(7) | PORTSC_PTW, portsc);
		if (sts)
			FUNC2(ci, OP_PORTSC, PORTSC_STS, PORTSC_STS);
	}
}