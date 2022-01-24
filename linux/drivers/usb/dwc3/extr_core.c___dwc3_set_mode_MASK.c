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
struct work_struct {int dummy; } ;
struct dwc3 {scalar_t__ dr_mode; int current_dr_role; int desired_dr_role; int /*<<< orphan*/  dev; int /*<<< orphan*/  usb3_generic_phy; int /*<<< orphan*/  usb2_generic_phy; TYPE_1__* usb2_phy; int /*<<< orphan*/  lock; int /*<<< orphan*/  desired_otg_role; scalar_t__ edev; } ;
struct TYPE_2__ {int /*<<< orphan*/  otg; } ;

/* Variables and functions */
#define  DWC3_GCTL_PRTCAP_DEVICE 130 
#define  DWC3_GCTL_PRTCAP_HOST 129 
#define  DWC3_GCTL_PRTCAP_OTG 128 
 int /*<<< orphan*/  DWC3_OTG_ROLE_IDLE ; 
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
 int /*<<< orphan*/  FUNC9 (struct dwc3*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct dwc3*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 struct dwc3* FUNC15 (struct work_struct*) ; 

__attribute__((used)) static void FUNC16(struct work_struct *work)
{
	struct dwc3 *dwc = FUNC15(work);
	unsigned long flags;
	int ret;

	if (dwc->dr_mode != USB_DR_MODE_OTG)
		return;

	if (dwc->current_dr_role == DWC3_GCTL_PRTCAP_OTG)
		FUNC9(dwc, 0);

	if (!dwc->desired_dr_role)
		return;

	if (dwc->desired_dr_role == dwc->current_dr_role)
		return;

	if (dwc->desired_dr_role == DWC3_GCTL_PRTCAP_OTG && dwc->edev)
		return;

	switch (dwc->current_dr_role) {
	case DWC3_GCTL_PRTCAP_HOST:
		FUNC5(dwc);
		break;
	case DWC3_GCTL_PRTCAP_DEVICE:
		FUNC3(dwc);
		FUNC1(dwc);
		break;
	case DWC3_GCTL_PRTCAP_OTG:
		FUNC7(dwc);
		FUNC13(&dwc->lock, flags);
		dwc->desired_otg_role = DWC3_OTG_ROLE_IDLE;
		FUNC14(&dwc->lock, flags);
		FUNC9(dwc, 1);
		break;
	default:
		break;
	}

	FUNC13(&dwc->lock, flags);

	FUNC10(dwc, dwc->desired_dr_role);

	FUNC14(&dwc->lock, flags);

	switch (dwc->desired_dr_role) {
	case DWC3_GCTL_PRTCAP_HOST:
		ret = FUNC6(dwc);
		if (ret) {
			FUNC0(dwc->dev, "failed to initialize host\n");
		} else {
			if (dwc->usb2_phy)
				FUNC11(dwc->usb2_phy->otg, true);
			FUNC12(dwc->usb2_generic_phy, PHY_MODE_USB_HOST);
			FUNC12(dwc->usb3_generic_phy, PHY_MODE_USB_HOST);
		}
		break;
	case DWC3_GCTL_PRTCAP_DEVICE:
		FUNC2(dwc);

		if (dwc->usb2_phy)
			FUNC11(dwc->usb2_phy->otg, false);
		FUNC12(dwc->usb2_generic_phy, PHY_MODE_USB_DEVICE);
		FUNC12(dwc->usb3_generic_phy, PHY_MODE_USB_DEVICE);

		ret = FUNC4(dwc);
		if (ret)
			FUNC0(dwc->dev, "failed to initialize peripheral\n");
		break;
	case DWC3_GCTL_PRTCAP_OTG:
		FUNC8(dwc);
		FUNC9(dwc, 0);
		break;
	default:
		break;
	}

}