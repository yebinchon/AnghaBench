#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int status; scalar_t__ dma; } ;
struct ast_vhub_req {int internal; TYPE_4__ req; int /*<<< orphan*/  queue; } ;
struct TYPE_7__ {int /*<<< orphan*/  is_in; } ;
struct ast_vhub_ep {TYPE_3__* vhub; int /*<<< orphan*/  ep; TYPE_2__ epn; TYPE_1__* dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  gadget; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct ast_vhub_ep*,char*,struct ast_vhub_req*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 

void FUNC7(struct ast_vhub_ep *ep, struct ast_vhub_req *req,
		   int status)
{
	bool internal = req->internal;

	FUNC0(ep, "completing request @%p, status %d\n", req, status);

	FUNC2(&req->queue);

	if (req->req.status == -EINPROGRESS)
		req->req.status = status;

	if (req->req.dma) {
		if (!FUNC1(!ep->dev))
			FUNC6(&ep->dev->gadget,
						 &req->req, ep->epn.is_in);
		req->req.dma = 0;
	}

	/*
	 * If this isn't an internal EP0 request, call the core
	 * to call the gadget completion.
	 */
	if (!internal) {
		FUNC4(&ep->vhub->lock);
		FUNC5(&ep->ep, &req->req);
		FUNC3(&ep->vhub->lock);
	}
}