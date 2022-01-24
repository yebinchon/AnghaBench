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
struct dwc3_event_depevt {int status; int endpoint_number; } ;
struct dwc3_ep {int /*<<< orphan*/  pending_list; } ;
struct dwc3 {int ep0_expect_in; int delayed_status; int /*<<< orphan*/  gadget; struct dwc3_ep** eps; int /*<<< orphan*/  ep0state; int /*<<< orphan*/  ep0_next_event; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  DEPEVT_STATUS_CONTROL_DATA 129 
#define  DEPEVT_STATUS_CONTROL_STATUS 128 
 int /*<<< orphan*/  DWC3_EP0_NRDY_STATUS ; 
 int /*<<< orphan*/  EP0_STATUS_PHASE ; 
 int /*<<< orphan*/  USB_STATE_CONFIGURED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc3*,struct dwc3_event_depevt const*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc3*,struct dwc3_ep*) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct dwc3 *dwc,
		const struct dwc3_event_depevt *event)
{
	switch (event->status) {
	case DEPEVT_STATUS_CONTROL_DATA:
		/*
		 * We already have a DATA transfer in the controller's cache,
		 * if we receive a XferNotReady(DATA) we will ignore it, unless
		 * it's for the wrong direction.
		 *
		 * In that case, we must issue END_TRANSFER command to the Data
		 * Phase we already have started and issue SetStall on the
		 * control endpoint.
		 */
		if (dwc->ep0_expect_in != event->endpoint_number) {
			struct dwc3_ep	*dep = dwc->eps[dwc->ep0_expect_in];

			FUNC1(dwc->dev, "unexpected direction for Data Phase\n");
			FUNC3(dwc, dep);
			FUNC4(dwc);
			return;
		}

		break;

	case DEPEVT_STATUS_CONTROL_STATUS:
		if (dwc->ep0_next_event != DWC3_EP0_NRDY_STATUS)
			return;

		dwc->ep0state = EP0_STATUS_PHASE;

		if (dwc->delayed_status) {
			struct dwc3_ep *dep = dwc->eps[0];

			FUNC0(event->endpoint_number != 1);
			/*
			 * We should handle the delay STATUS phase here if the
			 * request for handling delay STATUS has been queued
			 * into the list.
			 */
			if (!FUNC5(&dep->pending_list)) {
				dwc->delayed_status = false;
				FUNC6(&dwc->gadget,
						     USB_STATE_CONFIGURED);
				FUNC2(dwc, event);
			}

			return;
		}

		FUNC2(dwc, event);
	}
}