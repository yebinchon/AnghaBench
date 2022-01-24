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
struct TYPE_5__ {int status; int /*<<< orphan*/  length; int /*<<< orphan*/  actual; } ;
struct net2280_request {TYPE_1__ req; int /*<<< orphan*/  queue; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct net2280_ep {unsigned int stopped; TYPE_2__ ep; int /*<<< orphan*/  is_in; scalar_t__ dma; struct net2280* dev; } ;
struct net2280 {int /*<<< orphan*/  lock; int /*<<< orphan*/  gadget; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct net2280*,char*,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct net2280_ep *ep, struct net2280_request *req, int status)
{
	struct net2280		*dev;
	unsigned		stopped = ep->stopped;

	FUNC1(&req->queue);

	if (req->req.status == -EINPROGRESS)
		req->req.status = status;
	else
		status = req->req.status;

	dev = ep->dev;
	if (ep->dma)
		FUNC5(&dev->gadget, &req->req, ep->is_in);

	if (status && status != -ESHUTDOWN)
		FUNC0(dev, "complete %s req %p stat %d len %u/%u\n",
			ep->ep.name, &req->req, status,
			req->req.actual, req->req.length);

	/* don't modify queue heads during completion callback */
	ep->stopped = 1;
	FUNC3(&dev->lock);
	FUNC4(&ep->ep, &req->req);
	FUNC2(&dev->lock);
	ep->stopped = stopped;
}