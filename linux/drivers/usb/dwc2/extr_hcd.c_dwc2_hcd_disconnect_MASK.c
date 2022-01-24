#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int port_connect_status_change; scalar_t__ port_connect_status; } ;
struct TYPE_4__ {TYPE_1__ b; } ;
struct dwc2_hsotg {scalar_t__ op_state; int /*<<< orphan*/  dev; TYPE_2__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GINTMSK ; 
 int /*<<< orphan*/  GINTSTS ; 
 int GINTSTS_HCHINT ; 
 int GINTSTS_NPTXFEMP ; 
 int GINTSTS_PTXFEMP ; 
 int /*<<< orphan*/  HPRT0 ; 
 int HPRT0_CONNDET ; 
 int HPRT0_CONNSTS ; 
 scalar_t__ OTG_STATE_A_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc2_hsotg*) ; 
 scalar_t__ FUNC5 (struct dwc2_hsotg*) ; 
 scalar_t__ FUNC6 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC7 (struct dwc2_hsotg*) ; 
 int FUNC8 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dwc2_hsotg*,int,int /*<<< orphan*/ ) ; 

void FUNC10(struct dwc2_hsotg *hsotg, bool force)
{
	u32 intr;
	u32 hprt0;

	/* Set status flags for the hub driver */
	hsotg->flags.b.port_connect_status_change = 1;
	hsotg->flags.b.port_connect_status = 0;

	/*
	 * Shutdown any transfers in process by clearing the Tx FIFO Empty
	 * interrupt mask and status bits and disabling subsequent host
	 * channel interrupts.
	 */
	intr = FUNC8(hsotg, GINTMSK);
	intr &= ~(GINTSTS_NPTXFEMP | GINTSTS_PTXFEMP | GINTSTS_HCHINT);
	FUNC9(hsotg, intr, GINTMSK);
	intr = GINTSTS_NPTXFEMP | GINTSTS_PTXFEMP | GINTSTS_HCHINT;
	FUNC9(hsotg, intr, GINTSTS);

	/*
	 * Turn off the vbus power only if the core has transitioned to device
	 * mode. If still in host mode, need to keep power on to detect a
	 * reconnection.
	 */
	if (FUNC5(hsotg)) {
		if (hsotg->op_state != OTG_STATE_A_SUSPEND) {
			FUNC0(hsotg->dev, "Disconnect: PortPower off\n");
			FUNC9(hsotg, 0, HPRT0);
		}

		FUNC1(hsotg);
	}

	/* Respond with an error status to all URBs in the schedule */
	FUNC7(hsotg);

	if (FUNC6(hsotg))
		/* Clean up any host channels that were in use */
		FUNC2(hsotg);

	FUNC4(hsotg);

	/*
	 * Add an extra check here to see if we're actually connected but
	 * we don't have a detection interrupt pending.  This can happen if:
	 *   1. hardware sees connect
	 *   2. hardware sees disconnect
	 *   3. hardware sees connect
	 *   4. dwc2_port_intr() - clears connect interrupt
	 *   5. dwc2_handle_common_intr() - calls here
	 *
	 * Without the extra check here we will end calling disconnect
	 * and won't get any future interrupts to handle the connect.
	 */
	if (!force) {
		hprt0 = FUNC8(hsotg, HPRT0);
		if (!(hprt0 & HPRT0_CONNDET) && (hprt0 & HPRT0_CONNSTS))
			FUNC3(hsotg);
	}
}