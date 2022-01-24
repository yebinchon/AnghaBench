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
struct dwc2_hsotg {unsigned int num_of_eps; int /*<<< orphan*/  gadget; int /*<<< orphan*/  lx_state; scalar_t__* eps_out; scalar_t__* eps_in; scalar_t__ test_mode; scalar_t__ connected; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC2_L3 ; 
 int /*<<< orphan*/  ESHUTDOWN ; 
 int /*<<< orphan*/  USB_STATE_NOTATTACHED ; 
 int /*<<< orphan*/  FUNC0 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  disconnect ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(struct dwc2_hsotg *hsotg)
{
	unsigned int ep;

	if (!hsotg->connected)
		return;

	hsotg->connected = 0;
	hsotg->test_mode = 0;

	/* all endpoints should be shutdown */
	for (ep = 0; ep < hsotg->num_of_eps; ep++) {
		if (hsotg->eps_in[ep])
			FUNC1(hsotg, hsotg->eps_in[ep],
					  -ESHUTDOWN);
		if (hsotg->eps_out[ep])
			FUNC1(hsotg, hsotg->eps_out[ep],
					  -ESHUTDOWN);
	}

	FUNC0(hsotg, disconnect);
	hsotg->lx_state = DWC2_L3;

	FUNC2(&hsotg->gadget, USB_STATE_NOTATTACHED);
}