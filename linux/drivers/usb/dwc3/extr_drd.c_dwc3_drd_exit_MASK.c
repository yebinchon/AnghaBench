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
struct dwc3 {int current_dr_role; int /*<<< orphan*/  otg_irq; scalar_t__ edev; int /*<<< orphan*/  lock; int /*<<< orphan*/  desired_otg_role; int /*<<< orphan*/  drd_work; int /*<<< orphan*/  edev_nb; } ;

/* Variables and functions */
#define  DWC3_GCTL_PRTCAP_DEVICE 130 
#define  DWC3_GCTL_PRTCAP_HOST 129 
#define  DWC3_GCTL_PRTCAP_OTG 128 
 int /*<<< orphan*/  DWC3_OTG_ROLE_IDLE ; 
 int /*<<< orphan*/  EXTCON_USB_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC5 (struct dwc3*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct dwc3*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC10(struct dwc3 *dwc)
{
	unsigned long flags;

	if (dwc->edev)
		FUNC6(dwc->edev, EXTCON_USB_HOST,
					   &dwc->edev_nb);

	FUNC0(&dwc->drd_work);

	/* debug user might have changed role, clean based on current role */
	switch (dwc->current_dr_role) {
	case DWC3_GCTL_PRTCAP_HOST:
		FUNC3(dwc);
		break;
	case DWC3_GCTL_PRTCAP_DEVICE:
		FUNC2(dwc);
		FUNC1(dwc);
		break;
	case DWC3_GCTL_PRTCAP_OTG:
		FUNC4(dwc);
		FUNC8(&dwc->lock, flags);
		dwc->desired_otg_role = DWC3_OTG_ROLE_IDLE;
		FUNC9(&dwc->lock, flags);
		FUNC5(dwc, 1);
		break;
	default:
		break;
	}

	if (!dwc->edev)
		FUNC7(dwc->otg_irq, dwc);
}