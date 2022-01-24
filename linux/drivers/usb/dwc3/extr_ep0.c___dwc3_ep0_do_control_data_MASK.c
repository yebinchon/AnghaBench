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
struct TYPE_4__ {int length; int /*<<< orphan*/  dma; scalar_t__ zero; } ;
struct dwc3_request {int direction; int /*<<< orphan*/ * trb; TYPE_2__ request; } ;
struct TYPE_3__ {int maxpacket; } ;
struct dwc3_ep {scalar_t__ number; int trb_enqueue; TYPE_1__ endpoint; } ;
struct dwc3 {int ep0_bounced; int /*<<< orphan*/ * ep0_trb; int /*<<< orphan*/  sysdev; int /*<<< orphan*/  bounce_addr; int /*<<< orphan*/  ep0_trb_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_TRBCTL_CONTROL_DATA ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc3_ep*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct dwc3_ep*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct dwc3 *dwc,
		struct dwc3_ep *dep, struct dwc3_request *req)
{
	int			ret;

	req->direction = !!dep->number;

	if (req->request.length == 0) {
		FUNC2(dep, dwc->ep0_trb_addr, 0,
				DWC3_TRBCTL_CONTROL_DATA, false);
		ret = FUNC3(dep);
	} else if (!FUNC0(req->request.length, dep->endpoint.maxpacket)
			&& (dep->number == 0)) {
		u32	maxpacket;
		u32	rem;

		ret = FUNC4(dwc->sysdev,
				&req->request, dep->number);
		if (ret)
			return;

		maxpacket = dep->endpoint.maxpacket;
		rem = req->request.length % maxpacket;
		dwc->ep0_bounced = true;

		/* prepare normal TRB */
		FUNC2(dep, req->request.dma,
					 req->request.length,
					 DWC3_TRBCTL_CONTROL_DATA,
					 true);

		req->trb = &dwc->ep0_trb[dep->trb_enqueue - 1];

		/* Now prepare one extra TRB to align transfer size */
		FUNC2(dep, dwc->bounce_addr,
					 maxpacket - rem,
					 DWC3_TRBCTL_CONTROL_DATA,
					 false);
		ret = FUNC3(dep);
	} else if (FUNC0(req->request.length, dep->endpoint.maxpacket) &&
		   req->request.length && req->request.zero) {

		ret = FUNC4(dwc->sysdev,
				&req->request, dep->number);
		if (ret)
			return;

		/* prepare normal TRB */
		FUNC2(dep, req->request.dma,
					 req->request.length,
					 DWC3_TRBCTL_CONTROL_DATA,
					 true);

		req->trb = &dwc->ep0_trb[dep->trb_enqueue - 1];

		/* Now prepare one extra TRB to align transfer size */
		FUNC2(dep, dwc->bounce_addr,
					 0, DWC3_TRBCTL_CONTROL_DATA,
					 false);
		ret = FUNC3(dep);
	} else {
		ret = FUNC4(dwc->sysdev,
				&req->request, dep->number);
		if (ret)
			return;

		FUNC2(dep, req->request.dma,
				req->request.length, DWC3_TRBCTL_CONTROL_DATA,
				false);

		req->trb = &dwc->ep0_trb[dep->trb_enqueue];

		ret = FUNC3(dep);
	}

	FUNC1(ret < 0);
}