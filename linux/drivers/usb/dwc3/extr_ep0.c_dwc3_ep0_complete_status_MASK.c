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
typedef  scalar_t__ u32 ;
struct dwc3_trb {int /*<<< orphan*/  size; } ;
struct dwc3_request {int dummy; } ;
struct dwc3_event_depevt {int dummy; } ;
struct dwc3_ep {int /*<<< orphan*/  pending_list; } ;
struct dwc3 {int setup_packet_pending; int /*<<< orphan*/  ep0state; int /*<<< orphan*/  test_mode_nr; int /*<<< orphan*/  dev; scalar_t__ test_mode; struct dwc3_trb* ep0_trb; struct dwc3_ep** eps; } ;

/* Variables and functions */
 scalar_t__ DWC3_TRBSTS_SETUP_PENDING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EP0_SETUP_PHASE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc3_ep*,struct dwc3_request*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dwc3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct dwc3_request* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct dwc3_ep*,struct dwc3_trb*) ; 

__attribute__((used)) static void FUNC9(struct dwc3 *dwc,
		const struct dwc3_event_depevt *event)
{
	struct dwc3_request	*r;
	struct dwc3_ep		*dep;
	struct dwc3_trb		*trb;
	u32			status;

	dep = dwc->eps[0];
	trb = dwc->ep0_trb;

	FUNC8(dep, trb);

	if (!FUNC6(&dep->pending_list)) {
		r = FUNC7(&dep->pending_list);

		FUNC4(dep, r, 0);
	}

	if (dwc->test_mode) {
		int ret;

		ret = FUNC5(dwc, dwc->test_mode_nr);
		if (ret < 0) {
			FUNC1(dwc->dev, "invalid test #%d\n",
					dwc->test_mode_nr);
			FUNC3(dwc);
			return;
		}
	}

	status = FUNC0(trb->size);
	if (status == DWC3_TRBSTS_SETUP_PENDING)
		dwc->setup_packet_pending = true;

	dwc->ep0state = EP0_SETUP_PHASE;
	FUNC2(dwc);
}