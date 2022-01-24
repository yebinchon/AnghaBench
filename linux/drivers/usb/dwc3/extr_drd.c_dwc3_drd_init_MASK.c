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
struct TYPE_2__ {int /*<<< orphan*/  notifier_call; } ;
struct dwc3 {int otg_irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  current_dr_role; TYPE_1__ edev_nb; scalar_t__ edev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_GCTL_PRTCAP_OTG ; 
 int /*<<< orphan*/  DWC3_OTG_ALL_EVENTS ; 
 int ENODEV ; 
 int /*<<< orphan*/  EXTCON_USB_HOST ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  dwc3_drd_notifier ; 
 int /*<<< orphan*/  FUNC3 (struct dwc3*) ; 
 scalar_t__ FUNC4 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC5 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC6 (struct dwc3*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC8 (struct dwc3*) ; 
 int /*<<< orphan*/  dwc3_otg_irq ; 
 int /*<<< orphan*/  dwc3_otg_thread_irq ; 
 int /*<<< orphan*/  FUNC9 (struct dwc3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dwc3*,int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct dwc3*) ; 

int FUNC13(struct dwc3 *dwc)
{
	int ret, irq;

	dwc->edev = FUNC4(dwc);
	if (FUNC0(dwc->edev))
		return FUNC1(dwc->edev);

	if (dwc->edev) {
		dwc->edev_nb.notifier_call = dwc3_drd_notifier;
		ret = FUNC11(dwc->edev, EXTCON_USB_HOST,
					       &dwc->edev_nb);
		if (ret < 0) {
			FUNC2(dwc->dev, "couldn't register cable notifier\n");
			return ret;
		}

		FUNC3(dwc);
	} else {
		FUNC10(dwc, DWC3_GCTL_PRTCAP_OTG);
		dwc->current_dr_role = DWC3_GCTL_PRTCAP_OTG;

		/* use OTG block to get ID event */
		irq = FUNC7(dwc);
		if (irq < 0)
			return irq;

		dwc->otg_irq = irq;

		/* disable all OTG IRQs */
		FUNC6(dwc, DWC3_OTG_ALL_EVENTS);
		/* clear all events */
		FUNC5(dwc);

		ret = FUNC12(dwc->otg_irq, dwc3_otg_irq,
					   dwc3_otg_thread_irq,
					   IRQF_SHARED, "dwc3-otg", dwc);
		if (ret) {
			FUNC2(dwc->dev, "failed to request irq #%d --> %d\n",
				dwc->otg_irq, ret);
			ret = -ENODEV;
			return ret;
		}

		FUNC8(dwc);
		FUNC9(dwc, DWC3_GCTL_PRTCAP_OTG);
	}

	return 0;
}