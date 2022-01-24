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
struct dwc2_hsotg_req {int dummy; } ;
struct dwc2_hsotg_ep {unsigned int fifo_size; int /*<<< orphan*/  fifo_index; int /*<<< orphan*/  queue; int /*<<< orphan*/ * req; } ;
struct dwc2_hsotg {int /*<<< orphan*/  dedicated_fifos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*,struct dwc2_hsotg_ep*,struct dwc2_hsotg_req*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 struct dwc2_hsotg_req* FUNC4 (struct dwc2_hsotg_ep*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct dwc2_hsotg *hsotg,
			      struct dwc2_hsotg_ep *ep,
			      int result)
{
	unsigned int size;

	ep->req = NULL;

	while (!FUNC5(&ep->queue)) {
		struct dwc2_hsotg_req *req = FUNC4(ep);

		FUNC1(hsotg, ep, req, result);
	}

	if (!hsotg->dedicated_fifos)
		return;
	size = (FUNC3(hsotg, FUNC0(ep->fifo_index)) & 0xffff) * 4;
	if (size < ep->fifo_size)
		FUNC2(hsotg, ep->fifo_index);
}