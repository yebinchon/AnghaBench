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
struct dwc3 {scalar_t__ dr_mode; scalar_t__ current_dr_role; int desired_otg_role; int current_otg_role; int /*<<< orphan*/  dev; int /*<<< orphan*/  usb2_generic_phy; TYPE_1__* usb2_phy; int /*<<< orphan*/  lock; int /*<<< orphan*/  regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  otg; } ;

/* Variables and functions */
 scalar_t__ DWC3_GCTL_PRTCAP_OTG ; 
 int /*<<< orphan*/  DWC3_OSTS ; 
 int DWC3_OSTS_CONIDSTS ; 
#define  DWC3_OTG_ROLE_DEVICE 129 
#define  DWC3_OTG_ROLE_HOST 128 
 int /*<<< orphan*/  PHY_MODE_USB_DEVICE ; 
 int /*<<< orphan*/  PHY_MODE_USB_HOST ; 
 scalar_t__ USB_DR_MODE_OTG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc3*) ; 
 int FUNC4 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC5 (struct dwc3*) ; 
 int FUNC6 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC7 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC8 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC9 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC10 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC11 (struct dwc3*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC17(struct dwc3 *dwc, bool ignore_idstatus)
{
	int ret;
	u32 reg;
	int id;
	unsigned long flags;

	if (dwc->dr_mode != USB_DR_MODE_OTG)
		return;

	/* don't do anything if debug user changed role to not OTG */
	if (dwc->current_dr_role != DWC3_GCTL_PRTCAP_OTG)
		return;

	if (!ignore_idstatus) {
		reg = FUNC12(dwc->regs, DWC3_OSTS);
		id = !!(reg & DWC3_OSTS_CONIDSTS);

		dwc->desired_otg_role = id ? DWC3_OTG_ROLE_DEVICE :
					DWC3_OTG_ROLE_HOST;
	}

	if (dwc->desired_otg_role == dwc->current_otg_role)
		return;

	switch (dwc->current_otg_role) {
	case DWC3_OTG_ROLE_HOST:
		FUNC5(dwc);
		FUNC15(&dwc->lock, flags);
		FUNC9(dwc);
		FUNC16(&dwc->lock, flags);
		break;
	case DWC3_OTG_ROLE_DEVICE:
		FUNC3(dwc);
		FUNC15(&dwc->lock, flags);
		FUNC1(dwc);
		FUNC7(dwc);
		FUNC16(&dwc->lock, flags);
		break;
	default:
		break;
	}

	FUNC15(&dwc->lock, flags);

	dwc->current_otg_role = dwc->desired_otg_role;

	FUNC16(&dwc->lock, flags);

	switch (dwc->desired_otg_role) {
	case DWC3_OTG_ROLE_HOST:
		FUNC15(&dwc->lock, flags);
		FUNC11(dwc);
		FUNC10(dwc);
		FUNC16(&dwc->lock, flags);
		ret = FUNC6(dwc);
		if (ret) {
			FUNC0(dwc->dev, "failed to initialize host\n");
		} else {
			if (dwc->usb2_phy)
				FUNC13(dwc->usb2_phy->otg, true);
			if (dwc->usb2_generic_phy)
				FUNC14(dwc->usb2_generic_phy,
					     PHY_MODE_USB_HOST);
		}
		break;
	case DWC3_OTG_ROLE_DEVICE:
		FUNC15(&dwc->lock, flags);
		FUNC11(dwc);
		FUNC8(dwc);
		FUNC2(dwc);
		FUNC16(&dwc->lock, flags);

		if (dwc->usb2_phy)
			FUNC13(dwc->usb2_phy->otg, false);
		if (dwc->usb2_generic_phy)
			FUNC14(dwc->usb2_generic_phy,
				     PHY_MODE_USB_DEVICE);
		ret = FUNC4(dwc);
		if (ret)
			FUNC0(dwc->dev, "failed to initialize peripheral\n");
		break;
	default:
		break;
	}
}