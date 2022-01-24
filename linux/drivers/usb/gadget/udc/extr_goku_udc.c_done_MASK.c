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
struct goku_udc {int /*<<< orphan*/  lock; int /*<<< orphan*/  gadget; } ;
struct TYPE_5__ {int status; int /*<<< orphan*/  length; int /*<<< orphan*/  actual; } ;
struct goku_request {TYPE_1__ req; int /*<<< orphan*/  queue; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct goku_ep {unsigned int stopped; TYPE_2__ ep; int /*<<< orphan*/  is_in; scalar_t__ dma; struct goku_udc* dev; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct goku_udc*,char*,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct goku_ep *ep, struct goku_request *req, int status)
{
	struct goku_udc		*dev;
	unsigned		stopped = ep->stopped;

	FUNC2(&req->queue);

	if (FUNC1(req->req.status == -EINPROGRESS))
		req->req.status = status;
	else
		status = req->req.status;

	dev = ep->dev;

	if (ep->dma)
		FUNC6(&dev->gadget, &req->req, ep->is_in);

#ifndef USB_TRACE
	if (status && status != -ESHUTDOWN)
#endif
		FUNC0(dev, "complete %s req %p stat %d len %u/%u\n",
			ep->ep.name, &req->req, status,
			req->req.actual, req->req.length);

	/* don't modify queue heads during completion callback */
	ep->stopped = 1;
	FUNC4(&dev->lock);
	FUNC5(&ep->ep, &req->req);
	FUNC3(&dev->lock);
	ep->stopped = stopped;
}