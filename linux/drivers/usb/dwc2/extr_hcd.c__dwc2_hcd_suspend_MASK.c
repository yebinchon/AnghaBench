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
struct usb_hcd {int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {scalar_t__ power_down; } ;
struct dwc2_hsotg {scalar_t__ lx_state; scalar_t__ op_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  uphy; int /*<<< orphan*/  dev; TYPE_1__ params; scalar_t__ regs; int /*<<< orphan*/  bus_suspended; } ;

/* Variables and functions */
 scalar_t__ DWC2_L0 ; 
 scalar_t__ DWC2_L2 ; 
 scalar_t__ DWC2_POWER_DOWN_PARAM_PARTIAL ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  HCD_FLAG_HW_ACCESSIBLE ; 
 int /*<<< orphan*/  FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  HPRT0 ; 
 int HPRT0_CONNSTS ; 
 int HPRT0_PWR ; 
 int HPRT0_SUSP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ OTG_STATE_B_PERIPHERAL ; 
 scalar_t__ PCGCTL ; 
 int PCGCTL_STOPPCLK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct dwc2_hsotg*) ; 
 struct dwc2_hsotg* FUNC5 (struct usb_hcd*) ; 
 scalar_t__ FUNC6 (struct dwc2_hsotg*) ; 
 int FUNC7 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC8 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC9 (struct dwc2_hsotg*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC15(struct usb_hcd *hcd)
{
	struct dwc2_hsotg *hsotg = FUNC5(hcd);
	unsigned long flags;
	int ret = 0;
	u32 hprt0;
	u32 pcgctl;

	FUNC11(&hsotg->lock, flags);

	if (FUNC6(hsotg))
		goto unlock;

	if (hsotg->lx_state != DWC2_L0)
		goto unlock;

	if (!FUNC0(hcd))
		goto unlock;

	if (hsotg->op_state == OTG_STATE_B_PERIPHERAL)
		goto unlock;

	if (hsotg->params.power_down > DWC2_POWER_DOWN_PARAM_PARTIAL)
		goto skip_power_saving;

	/*
	 * Drive USB suspend and disable port Power
	 * if usb bus is not suspended.
	 */
	if (!hsotg->bus_suspended) {
		hprt0 = FUNC7(hsotg);
		if (hprt0 & HPRT0_CONNSTS) {
			hprt0 |= HPRT0_SUSP;
			if (hsotg->params.power_down == DWC2_POWER_DOWN_PARAM_PARTIAL)
				hprt0 &= ~HPRT0_PWR;
			FUNC9(hsotg, hprt0, HPRT0);
		}
		if (hsotg->params.power_down == DWC2_POWER_DOWN_PARAM_PARTIAL) {
			FUNC12(&hsotg->lock, flags);
			FUNC8(hsotg);
			FUNC11(&hsotg->lock, flags);
		} else {
			pcgctl = FUNC10(hsotg->regs + PCGCTL);
			pcgctl |= PCGCTL_STOPPCLK;
			FUNC14(pcgctl, hsotg->regs + PCGCTL);
		}
	}

	if (hsotg->params.power_down == DWC2_POWER_DOWN_PARAM_PARTIAL) {
		/* Enter partial_power_down */
		ret = FUNC4(hsotg);
		if (ret) {
			if (ret != -ENOTSUPP)
				FUNC3(hsotg->dev,
					"enter partial_power_down failed\n");
			goto skip_power_saving;
		}

		/* After entering partial_power_down, hardware is no more accessible */
		FUNC2(HCD_FLAG_HW_ACCESSIBLE, &hcd->flags);
	}

	/* Ask phy to be suspended */
	if (!FUNC1(hsotg->uphy)) {
		FUNC12(&hsotg->lock, flags);
		FUNC13(hsotg->uphy, true);
		FUNC11(&hsotg->lock, flags);
	}

skip_power_saving:
	hsotg->lx_state = DWC2_L2;
unlock:
	FUNC12(&hsotg->lock, flags);

	return ret;
}