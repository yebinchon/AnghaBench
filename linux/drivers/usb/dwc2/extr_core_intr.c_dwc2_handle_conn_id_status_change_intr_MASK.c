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
struct dwc2_hsotg {int /*<<< orphan*/  lock; int /*<<< orphan*/  wf_otg; scalar_t__ wq_otg; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GINTMSK ; 
 int /*<<< orphan*/  GINTSTS ; 
 int /*<<< orphan*/  GINTSTS_CONIDSTSCHNG ; 
 int /*<<< orphan*/  GINTSTS_SOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC1 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct dwc2_hsotg *hsotg)
{
	u32 gintmsk;

	/* Clear interrupt */
	FUNC3(hsotg, GINTSTS_CONIDSTSCHNG, GINTSTS);

	/* Need to disable SOF interrupt immediately */
	gintmsk = FUNC2(hsotg, GINTMSK);
	gintmsk &= ~GINTSTS_SOF;
	FUNC3(hsotg, gintmsk, GINTMSK);

	FUNC0(hsotg->dev, " ++Connector ID Status Change Interrupt++  (%s)\n",
		FUNC1(hsotg) ? "Host" : "Device");

	/*
	 * Need to schedule a work, as there are possible DELAY function calls.
	 * Release lock before scheduling workq as it holds spinlock during
	 * scheduling.
	 */
	if (hsotg->wq_otg) {
		FUNC6(&hsotg->lock);
		FUNC4(hsotg->wq_otg, &hsotg->wf_otg);
		FUNC5(&hsotg->lock);
	}
}