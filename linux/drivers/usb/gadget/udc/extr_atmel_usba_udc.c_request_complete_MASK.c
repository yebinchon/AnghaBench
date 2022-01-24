#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usba_udc {int /*<<< orphan*/  lock; int /*<<< orphan*/  gadget; } ;
struct TYPE_4__ {int status; int /*<<< orphan*/  actual; } ;
struct usba_request {TYPE_1__ req; scalar_t__ using_dma; int /*<<< orphan*/  queue; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct usba_ep {TYPE_2__ ep; int /*<<< orphan*/  is_in; struct usba_udc* udc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,struct usba_request*,int,int /*<<< orphan*/ ) ; 
 int DBG_GADGET ; 
 int DBG_REQ ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct usba_ep *ep, struct usba_request *req, int status)
{
	struct usba_udc *udc = ep->udc;

	FUNC1(!FUNC2(&req->queue));

	if (req->req.status == -EINPROGRESS)
		req->req.status = status;

	if (req->using_dma)
		FUNC6(&udc->gadget, &req->req, ep->is_in);

	FUNC0(DBG_GADGET | DBG_REQ,
		"%s: req %p complete: status %d, actual %u\n",
		ep->ep.name, req, req->req.status, req->req.actual);

	FUNC4(&udc->lock);
	FUNC5(&ep->ep, &req->req);
	FUNC3(&udc->lock);
}