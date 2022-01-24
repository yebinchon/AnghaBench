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
struct pxa27x_request {int in_use; int /*<<< orphan*/  queue; TYPE_1__ req; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDCCSR ; 
 int /*<<< orphan*/  FUNC0 (struct pxa_ep*,char*,struct pxa27x_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_ep*) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa_ep*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct pxa_ep *ep, struct pxa27x_request *req)
{
	if (FUNC4(!req))
		return;
	FUNC0(ep, "req:%p, lg=%d, udccsr=0x%03x\n", req,
		req->req.length, FUNC3(ep, UDCCSR));

	req->in_use = 1;
	FUNC1(&req->queue, &ep->queue);
	FUNC2(ep);
}