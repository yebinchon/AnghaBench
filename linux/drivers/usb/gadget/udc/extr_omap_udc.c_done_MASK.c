#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct omap_udc {int /*<<< orphan*/  lock; int /*<<< orphan*/  gadget; } ;
struct TYPE_5__ {int status; int /*<<< orphan*/  length; int /*<<< orphan*/  actual; } ;
struct omap_req {TYPE_1__ req; int /*<<< orphan*/  queue; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct omap_ep {unsigned int stopped; int bEndpointAddress; struct omap_udc* udc; TYPE_2__ ep; scalar_t__ has_dma; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int ESHUTDOWN ; 
 int USB_DIR_IN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 scalar_t__ use_dma ; 

__attribute__((used)) static void
FUNC6(struct omap_ep *ep, struct omap_req *req, int status)
{
	struct omap_udc		*udc = ep->udc;
	unsigned		stopped = ep->stopped;

	FUNC1(&req->queue);

	if (req->req.status == -EINPROGRESS)
		req->req.status = status;
	else
		status = req->req.status;

	if (use_dma && ep->has_dma)
		FUNC5(&udc->gadget, &req->req,
				(ep->bEndpointAddress & USB_DIR_IN));

#ifndef	USB_TRACE
	if (status && status != -ESHUTDOWN)
#endif
		FUNC0("complete %s req %p stat %d len %u/%u\n",
			ep->ep.name, &req->req, status,
			req->req.actual, req->req.length);

	/* don't modify queue heads during completion callback */
	ep->stopped = 1;
	FUNC3(&ep->udc->lock);
	FUNC4(&ep->ep, &req->req);
	FUNC2(&ep->udc->lock);
	ep->stopped = stopped;
}