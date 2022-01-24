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
struct dwc3_request {int dummy; } ;
struct dwc3_ep {int /*<<< orphan*/  cancelled_list; int /*<<< orphan*/  pending_list; int /*<<< orphan*/  started_list; } ;
struct dwc3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct dwc3_ep*,struct dwc3_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc3_ep*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct dwc3_request* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct dwc3 *dwc, struct dwc3_ep *dep)
{
	struct dwc3_request		*req;

	FUNC1(dep, true, false);

	/* - giveback all requests to gadget driver */
	while (!FUNC2(&dep->started_list)) {
		req = FUNC3(&dep->started_list);

		FUNC0(dep, req, -ESHUTDOWN);
	}

	while (!FUNC2(&dep->pending_list)) {
		req = FUNC3(&dep->pending_list);

		FUNC0(dep, req, -ESHUTDOWN);
	}

	while (!FUNC2(&dep->cancelled_list)) {
		req = FUNC3(&dep->cancelled_list);

		FUNC0(dep, req, -ESHUTDOWN);
	}
}