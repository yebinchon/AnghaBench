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
typedef  size_t u32 ;
struct dwc2_hsotg_ep {int /*<<< orphan*/  isochronous; } ;
struct dwc2_hsotg {size_t num_of_eps; struct dwc2_hsotg_ep** eps_in; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  DAINTMSK ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 size_t DXEPCTL_EPDIS ; 
 size_t DXEPCTL_EPENA ; 
 size_t DXEPCTL_SNAK ; 
 int /*<<< orphan*/  GINTSTS ; 
 size_t GINTSTS_INCOMPL_SOIN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct dwc2_hsotg_ep*) ; 
 size_t FUNC4 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dwc2_hsotg*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct dwc2_hsotg *hsotg)
{
	struct dwc2_hsotg_ep *hs_ep;
	u32 epctrl;
	u32 daintmsk;
	u32 idx;

	FUNC2(hsotg->dev, "Incomplete isoc in interrupt received:\n");

	daintmsk = FUNC4(hsotg, DAINTMSK);

	for (idx = 1; idx < hsotg->num_of_eps; idx++) {
		hs_ep = hsotg->eps_in[idx];
		/* Proceed only unmasked ISOC EPs */
		if ((FUNC0(idx) & ~daintmsk) || !hs_ep->isochronous)
			continue;

		epctrl = FUNC4(hsotg, FUNC1(idx));
		if ((epctrl & DXEPCTL_EPENA) &&
		    FUNC3(hs_ep)) {
			epctrl |= DXEPCTL_SNAK;
			epctrl |= DXEPCTL_EPDIS;
			FUNC5(hsotg, epctrl, FUNC1(idx));
		}
	}

	/* Clear interrupt */
	FUNC5(hsotg, GINTSTS_INCOMPL_SOIN, GINTSTS);
}