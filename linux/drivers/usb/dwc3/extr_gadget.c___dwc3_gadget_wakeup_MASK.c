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
typedef  int u8 ;
typedef  int u32 ;
struct dwc3 {scalar_t__ revision; int /*<<< orphan*/  dev; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_DCTL ; 
 int DWC3_DCTL_ULSTCHNGREQ_MASK ; 
 int /*<<< orphan*/  DWC3_DSTS ; 
 int DWC3_DSTS_CONNECTSPD ; 
 int DWC3_DSTS_SUPERSPEED ; 
 int DWC3_DSTS_SUPERSPEED_PLUS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  DWC3_LINK_STATE_RECOV ; 
#define  DWC3_LINK_STATE_RX_DET 129 
 scalar_t__ DWC3_LINK_STATE_U0 ; 
#define  DWC3_LINK_STATE_U3 128 
 scalar_t__ DWC3_REVISION_194A ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct dwc3*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct dwc3 *dwc)
{
	int			retries;

	int			ret;
	u32			reg;

	u8			link_state;
	u8			speed;

	/*
	 * According to the Databook Remote wakeup request should
	 * be issued only when the device is in early suspend state.
	 *
	 * We can check that via USB Link State bits in DSTS register.
	 */
	reg = FUNC3(dwc->regs, DWC3_DSTS);

	speed = reg & DWC3_DSTS_CONNECTSPD;
	if ((speed == DWC3_DSTS_SUPERSPEED) ||
	    (speed == DWC3_DSTS_SUPERSPEED_PLUS))
		return 0;

	link_state = FUNC0(reg);

	switch (link_state) {
	case DWC3_LINK_STATE_RX_DET:	/* in HS, means Early Suspend */
	case DWC3_LINK_STATE_U3:	/* in HS, means SUSPEND */
		break;
	default:
		return -EINVAL;
	}

	ret = FUNC2(dwc, DWC3_LINK_STATE_RECOV);
	if (ret < 0) {
		FUNC1(dwc->dev, "failed to put link in Recovery\n");
		return ret;
	}

	/* Recent versions do this automatically */
	if (dwc->revision < DWC3_REVISION_194A) {
		/* write zeroes to Link Change Request */
		reg = FUNC3(dwc->regs, DWC3_DCTL);
		reg &= ~DWC3_DCTL_ULSTCHNGREQ_MASK;
		FUNC4(dwc->regs, DWC3_DCTL, reg);
	}

	/* poll until Link State changes to ON */
	retries = 20000;

	while (retries--) {
		reg = FUNC3(dwc->regs, DWC3_DSTS);

		/* in HS, means ON */
		if (FUNC0(reg) == DWC3_LINK_STATE_U0)
			break;
	}

	if (FUNC0(reg) != DWC3_LINK_STATE_U0) {
		FUNC1(dwc->dev, "failed to send remote wakeup\n");
		return -EINVAL;
	}

	return 0;
}