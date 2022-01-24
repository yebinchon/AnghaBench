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
struct TYPE_2__ {scalar_t__ length; scalar_t__ actual; } ;
struct dwc3_request {int needs_extra_trb; scalar_t__ num_pending_sgs; scalar_t__ remaining; TYPE_1__ request; } ;
struct dwc3_event_depevt {int dummy; } ;
struct dwc3_ep {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dwc3_ep*) ; 
 int FUNC1 (struct dwc3_ep*,struct dwc3_request*,struct dwc3_event_depevt const*,int) ; 
 int FUNC2 (struct dwc3_ep*,struct dwc3_request*,struct dwc3_event_depevt const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc3_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc3_ep*,struct dwc3_request*,int) ; 

__attribute__((used)) static int FUNC5(struct dwc3_ep *dep,
		const struct dwc3_event_depevt *event,
		struct dwc3_request *req, int status)
{
	int ret;

	if (req->num_pending_sgs)
		ret = FUNC2(dep, req, event,
				status);
	else
		ret = FUNC1(dep, req, event,
				status);

	if (req->needs_extra_trb) {
		ret = FUNC1(dep, req, event,
				status);
		req->needs_extra_trb = false;
	}

	req->request.actual = req->request.length - req->remaining;

	if (!FUNC3(req) &&
			req->num_pending_sgs) {
		FUNC0(dep);
		goto out;
	}

	FUNC4(dep, req, status);

out:
	return ret;
}