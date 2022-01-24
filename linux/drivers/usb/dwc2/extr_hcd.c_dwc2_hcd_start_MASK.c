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
struct dwc2_hsotg {scalar_t__ op_state; int /*<<< orphan*/  start_work; int /*<<< orphan*/  wq_otg; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPRT0 ; 
 int /*<<< orphan*/  HPRT0_RST ; 
 scalar_t__ OTG_STATE_B_HOST ; 
 int /*<<< orphan*/  FUNC0 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(struct dwc2_hsotg *hsotg)
{
	u32 hprt0;

	if (hsotg->op_state == OTG_STATE_B_HOST) {
		/*
		 * Reset the port. During a HNP mode switch the reset
		 * needs to occur within 1ms and have a duration of at
		 * least 50ms.
		 */
		hprt0 = FUNC0(hsotg);
		hprt0 |= HPRT0_RST;
		FUNC1(hsotg, hprt0, HPRT0);
	}

	FUNC3(hsotg->wq_otg, &hsotg->start_work,
			   FUNC2(50));
}