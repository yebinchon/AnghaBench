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
struct TYPE_5__ {int status; int /*<<< orphan*/  buf; int /*<<< orphan*/  length; int /*<<< orphan*/  actual; } ;
struct net2272_request {TYPE_1__ req; int /*<<< orphan*/  queue; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct net2272_ep {unsigned int stopped; scalar_t__ num; TYPE_2__ ep; int /*<<< orphan*/  is_in; scalar_t__ dma; struct net2272* dev; } ;
struct net2272 {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  gadget; scalar_t__ protocol_stall; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct net2272_ep*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net2272_ep*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ use_dma ; 

__attribute__((used)) static void
FUNC8(struct net2272_ep *ep, struct net2272_request *req, int status)
{
	struct net2272 *dev;
	unsigned stopped = ep->stopped;

	if (ep->num == 0) {
		if (ep->dev->protocol_stall) {
			ep->stopped = 1;
			FUNC3(ep);
		}
		FUNC0(ep);
	}

	FUNC2(&req->queue);

	if (req->req.status == -EINPROGRESS)
		req->req.status = status;
	else
		status = req->req.status;

	dev = ep->dev;
	if (use_dma && ep->dma)
		FUNC7(&dev->gadget, &req->req,
				ep->is_in);

	if (status && status != -ESHUTDOWN)
		FUNC1(dev->dev, "complete %s req %p stat %d len %u/%u buf %p\n",
			ep->ep.name, &req->req, status,
			req->req.actual, req->req.length, req->req.buf);

	/* don't modify queue heads during completion callback */
	ep->stopped = 1;
	FUNC5(&dev->lock);
	FUNC6(&ep->ep, &req->req);
	FUNC4(&dev->lock);
	ep->stopped = stopped;
}