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
struct usb_hcd {int /*<<< orphan*/  flags; int /*<<< orphan*/  state; } ;
struct usb_bus {scalar_t__ root_hub; } ;
struct dwc2_hsotg {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  lx_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC2_L0 ; 
 int /*<<< orphan*/  HCD_FLAG_HW_ACCESSIBLE ; 
 int /*<<< orphan*/  HC_STATE_RUNNING ; 
 int HPRT0_PWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*) ; 
 struct dwc2_hsotg* FUNC2 (struct usb_hcd*) ; 
 scalar_t__ FUNC3 (struct dwc2_hsotg*) ; 
 int FUNC4 (struct dwc2_hsotg*) ; 
 int FUNC5 (struct dwc2_hsotg*) ; 
 struct usb_bus* FUNC6 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC11(struct usb_hcd *hcd)
{
	struct dwc2_hsotg *hsotg = FUNC2(hcd);
	struct usb_bus *bus = FUNC6(hcd);
	unsigned long flags;
	u32 hprt0;
	int ret;

	FUNC0(hsotg->dev, "DWC OTG HCD START\n");

	FUNC8(&hsotg->lock, flags);
	hsotg->lx_state = DWC2_L0;
	hcd->state = HC_STATE_RUNNING;
	FUNC7(HCD_FLAG_HW_ACCESSIBLE, &hcd->flags);

	if (FUNC3(hsotg)) {
		FUNC9(&hsotg->lock, flags);
		return 0;	/* why 0 ?? */
	}

	FUNC1(hsotg);

	hprt0 = FUNC4(hsotg);
	/* Has vbus power been turned on in dwc2_core_host_init ? */
	if (hprt0 & HPRT0_PWR) {
		/* Enable external vbus supply before resuming root hub */
		FUNC9(&hsotg->lock, flags);
		ret = FUNC5(hsotg);
		if (ret)
			return ret;
		FUNC8(&hsotg->lock, flags);
	}

	/* Initialize and connect root hub if one is not already attached */
	if (bus->root_hub) {
		FUNC0(hsotg->dev, "DWC OTG HCD Has Root Hub\n");
		/* Inform the HUB driver to resume */
		FUNC10(hcd);
	}

	FUNC9(&hsotg->lock, flags);

	return 0;
}