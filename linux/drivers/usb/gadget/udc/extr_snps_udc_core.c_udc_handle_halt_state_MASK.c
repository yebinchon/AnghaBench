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
struct udc_ep {int halted; int /*<<< orphan*/  num; TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  ctl; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UDC_EPCTL_CNAK ; 
 int /*<<< orphan*/  UDC_EPCTL_S ; 
 int /*<<< orphan*/  FUNC1 (struct udc_ep*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct udc_ep *ep)
{
	u32 tmp;
	/* set stall as long not halted */
	if (ep->halted == 1) {
		tmp = FUNC2(&ep->regs->ctl);
		/* STALL cleared ? */
		if (!(tmp & FUNC0(UDC_EPCTL_S))) {
			/*
			 * FIXME: MSC spec requires that stall remains
			 * even on receivng of CLEAR_FEATURE HALT. So
			 * we would set STALL again here to be compliant.
			 * But with current mass storage drivers this does
			 * not work (would produce endless host retries).
			 * So we clear halt on CLEAR_FEATURE.
			 *
			DBG(ep->dev, "ep %d: set STALL again\n", ep->num);
			tmp |= AMD_BIT(UDC_EPCTL_S);
			writel(tmp, &ep->regs->ctl);*/

			/* clear NAK by writing CNAK */
			tmp |= FUNC0(UDC_EPCTL_CNAK);
			FUNC3(tmp, &ep->regs->ctl);
			ep->halted = 0;
			FUNC1(ep, ep->num);
		}
	}
}