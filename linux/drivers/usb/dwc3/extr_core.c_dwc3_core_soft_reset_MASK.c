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
struct dwc3 {scalar_t__ current_dr_role; scalar_t__ revision; int /*<<< orphan*/  usb2_generic_phy; int /*<<< orphan*/  usb3_generic_phy; int /*<<< orphan*/  regs; int /*<<< orphan*/  usb3_phy; int /*<<< orphan*/  usb2_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_DCTL ; 
 int DWC3_DCTL_CSFTRST ; 
 scalar_t__ DWC3_GCTL_PRTCAP_HOST ; 
 scalar_t__ DWC3_USB31_REVISION_180A ; 
 scalar_t__ DWC3_USB31_REVISION_190A ; 
 int ETIMEDOUT ; 
 scalar_t__ FUNC0 (struct dwc3*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct dwc3 *dwc)
{
	u32		reg;
	int		retries = 1000;
	int		ret;

	FUNC7(dwc->usb2_phy);
	FUNC7(dwc->usb3_phy);
	ret = FUNC5(dwc->usb2_generic_phy);
	if (ret < 0)
		return ret;

	ret = FUNC5(dwc->usb3_generic_phy);
	if (ret < 0) {
		FUNC4(dwc->usb2_generic_phy);
		return ret;
	}

	/*
	 * We're resetting only the device side because, if we're in host mode,
	 * XHCI driver will reset the host block. If dwc3 was configured for
	 * host-only mode, then we can return early.
	 */
	if (dwc->current_dr_role == DWC3_GCTL_PRTCAP_HOST)
		return 0;

	reg = FUNC1(dwc->regs, DWC3_DCTL);
	reg |= DWC3_DCTL_CSFTRST;
	FUNC2(dwc->regs, DWC3_DCTL, reg);

	/*
	 * For DWC_usb31 controller 1.90a and later, the DCTL.CSFRST bit
	 * is cleared only after all the clocks are synchronized. This can
	 * take a little more than 50ms. Set the polling rate at 20ms
	 * for 10 times instead.
	 */
	if (FUNC0(dwc) && dwc->revision >= DWC3_USB31_REVISION_190A)
		retries = 10;

	do {
		reg = FUNC1(dwc->regs, DWC3_DCTL);
		if (!(reg & DWC3_DCTL_CSFTRST))
			goto done;

		if (FUNC0(dwc) &&
		    dwc->revision >= DWC3_USB31_REVISION_190A)
			FUNC3(20);
		else
			FUNC6(1);
	} while (--retries);

	FUNC4(dwc->usb3_generic_phy);
	FUNC4(dwc->usb2_generic_phy);

	return -ETIMEDOUT;

done:
	/*
	 * For DWC_usb31 controller 1.80a and prior, once DCTL.CSFRST bit
	 * is cleared, we must wait at least 50ms before accessing the PHY
	 * domain (synchronization delay).
	 */
	if (FUNC0(dwc) && dwc->revision <= DWC3_USB31_REVISION_180A)
		FUNC3(50);

	return 0;
}