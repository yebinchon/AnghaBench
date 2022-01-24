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
struct usb_hcd {int /*<<< orphan*/  flags; int /*<<< orphan*/  state; int /*<<< orphan*/  irq; } ;
struct dwc2_hsotg {int /*<<< orphan*/  lock; int /*<<< orphan*/  lx_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC2_L3 ; 
 int /*<<< orphan*/  HCD_FLAG_HW_ACCESSIBLE ; 
 int /*<<< orphan*/  HC_STATE_HALT ; 
 int HPRT0_PWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*) ; 
 struct dwc2_hsotg* FUNC4 (struct usb_hcd*) ; 
 int FUNC5 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC6 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

__attribute__((used)) static void FUNC11(struct usb_hcd *hcd)
{
	struct dwc2_hsotg *hsotg = FUNC4(hcd);
	unsigned long flags;
	u32 hprt0;

	/* Turn off all host-specific interrupts */
	FUNC1(hsotg);

	/* Wait for interrupt processing to finish */
	FUNC9(hcd->irq);

	FUNC7(&hsotg->lock, flags);
	hprt0 = FUNC5(hsotg);
	/* Ensure hcd is disconnected */
	FUNC2(hsotg, true);
	FUNC3(hsotg);
	hsotg->lx_state = DWC2_L3;
	hcd->state = HC_STATE_HALT;
	FUNC0(HCD_FLAG_HW_ACCESSIBLE, &hcd->flags);
	FUNC8(&hsotg->lock, flags);

	/* keep balanced supply init/exit by checking HPRT0_PWR */
	if (hprt0 & HPRT0_PWR)
		FUNC6(hsotg);

	FUNC10(1000, 3000);
}