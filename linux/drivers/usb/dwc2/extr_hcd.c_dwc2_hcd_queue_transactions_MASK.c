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
typedef  int /*<<< orphan*/  u32 ;
struct dwc2_hsotg {int /*<<< orphan*/  non_periodic_sched_active; int /*<<< orphan*/  dev; } ;
typedef  enum dwc2_transaction_type { ____Placeholder_dwc2_transaction_type } dwc2_transaction_type ;

/* Variables and functions */
 int DWC2_TRANSACTION_ALL ; 
 int DWC2_TRANSACTION_NON_PERIODIC ; 
 int DWC2_TRANSACTION_PERIODIC ; 
 int /*<<< orphan*/  GINTMSK ; 
 int /*<<< orphan*/  GINTSTS_NPTXFEMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc2_hsotg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct dwc2_hsotg *hsotg,
				 enum dwc2_transaction_type tr_type)
{
#ifdef DWC2_DEBUG_SOF
	dev_vdbg(hsotg->dev, "Queue Transactions\n");
#endif
	/* Process host channels associated with periodic transfers */
	if (tr_type == DWC2_TRANSACTION_PERIODIC ||
	    tr_type == DWC2_TRANSACTION_ALL)
		FUNC2(hsotg);

	/* Process host channels associated with non-periodic transfers */
	if (tr_type == DWC2_TRANSACTION_NON_PERIODIC ||
	    tr_type == DWC2_TRANSACTION_ALL) {
		if (!FUNC5(&hsotg->non_periodic_sched_active)) {
			FUNC1(hsotg);
		} else {
			/*
			 * Ensure NP Tx FIFO empty interrupt is disabled when
			 * there are no non-periodic transfers to process
			 */
			u32 gintmsk = FUNC3(hsotg, GINTMSK);

			gintmsk &= ~GINTSTS_NPTXFEMP;
			FUNC4(hsotg, gintmsk, GINTMSK);
		}
	}
}