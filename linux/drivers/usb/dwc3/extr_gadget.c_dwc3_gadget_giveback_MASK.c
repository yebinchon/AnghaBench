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
struct dwc3_request {int /*<<< orphan*/  request; int /*<<< orphan*/  status; } ;
struct dwc3_ep {int /*<<< orphan*/  endpoint; struct dwc3* dwc; } ;
struct dwc3 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_REQUEST_STATUS_COMPLETED ; 
 int /*<<< orphan*/  FUNC0 (struct dwc3_ep*,struct dwc3_request*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(struct dwc3_ep *dep, struct dwc3_request *req,
		int status)
{
	struct dwc3			*dwc = dep->dwc;

	FUNC0(dep, req, status);
	req->status = DWC3_REQUEST_STATUS_COMPLETED;

	FUNC2(&dwc->lock);
	FUNC3(&dep->endpoint, &req->request);
	FUNC1(&dwc->lock);
}