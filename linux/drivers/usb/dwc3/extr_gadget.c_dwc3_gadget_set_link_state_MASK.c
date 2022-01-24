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
typedef  int u32 ;
struct dwc3 {scalar_t__ revision; int /*<<< orphan*/  regs; } ;
typedef  enum dwc3_link_state { ____Placeholder_dwc3_link_state } dwc3_link_state ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_DCTL ; 
 int FUNC0 (int) ; 
 int DWC3_DCTL_ULSTCHNGREQ_MASK ; 
 int /*<<< orphan*/  DWC3_DSTS ; 
 int DWC3_DSTS_DCNRD ; 
 int FUNC1 (int) ; 
 scalar_t__ DWC3_REVISION_194A ; 
 int ETIMEDOUT ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(struct dwc3 *dwc, enum dwc3_link_state state)
{
	int		retries = 10000;
	u32		reg;

	/*
	 * Wait until device controller is ready. Only applies to 1.94a and
	 * later RTL.
	 */
	if (dwc->revision >= DWC3_REVISION_194A) {
		while (--retries) {
			reg = FUNC2(dwc->regs, DWC3_DSTS);
			if (reg & DWC3_DSTS_DCNRD)
				FUNC4(5);
			else
				break;
		}

		if (retries <= 0)
			return -ETIMEDOUT;
	}

	reg = FUNC2(dwc->regs, DWC3_DCTL);
	reg &= ~DWC3_DCTL_ULSTCHNGREQ_MASK;

	/* set requested state */
	reg |= FUNC0(state);
	FUNC3(dwc->regs, DWC3_DCTL, reg);

	/*
	 * The following code is racy when called from dwc3_gadget_wakeup,
	 * and is not needed, at least on newer versions
	 */
	if (dwc->revision >= DWC3_REVISION_194A)
		return 0;

	/* wait for a change in DSTS */
	retries = 10000;
	while (--retries) {
		reg = FUNC2(dwc->regs, DWC3_DSTS);

		if (FUNC1(reg) == state)
			return 0;

		FUNC4(5);
	}

	return -ETIMEDOUT;
}