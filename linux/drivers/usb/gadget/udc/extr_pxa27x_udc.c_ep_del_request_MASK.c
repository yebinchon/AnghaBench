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
struct pxa_ep {int /*<<< orphan*/  queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  length; } ;
struct pxa27x_request {scalar_t__ in_use; int /*<<< orphan*/  queue; TYPE_1__ req; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDCCSR ; 
 int /*<<< orphan*/  FUNC0 (struct pxa_ep*,char*,struct pxa27x_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_ep*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa_ep*) ; 
 int /*<<< orphan*/  FUNC5 (struct pxa_ep*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct pxa_ep *ep, struct pxa27x_request *req)
{
	if (FUNC6(!req))
		return;
	FUNC0(ep, "req:%p, lg=%d, udccsr=0x%03x\n", req,
		req->req.length, FUNC5(ep, UDCCSR));

	FUNC2(&req->queue);
	req->in_use = 0;
	if (!FUNC1(ep) && FUNC3(&ep->queue))
		FUNC4(ep);
}