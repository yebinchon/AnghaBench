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
struct lpc32xx_udc {int /*<<< orphan*/  lock; int /*<<< orphan*/  gadget; } ;
struct TYPE_4__ {int status; } ;
struct lpc32xx_request {TYPE_1__ req; int /*<<< orphan*/  dd_desc_ptr; int /*<<< orphan*/  queue; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct lpc32xx_ep {TYPE_2__ ep; scalar_t__ req_pending; int /*<<< orphan*/  is_in; scalar_t__ lep; struct lpc32xx_udc* udc; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct lpc32xx_ep*,char*,int /*<<< orphan*/ ,struct lpc32xx_request*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct lpc32xx_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct lpc32xx_ep *ep, struct lpc32xx_request *req, int status)
{
	struct lpc32xx_udc *udc = ep->udc;

	FUNC1(&req->queue);
	if (req->req.status == -EINPROGRESS)
		req->req.status = status;
	else
		status = req->req.status;

	if (ep->lep) {
		FUNC6(&udc->gadget, &req->req, ep->is_in);

		/* Free DDs */
		FUNC4(udc, req->dd_desc_ptr);
	}

	if (status && status != -ESHUTDOWN)
		FUNC0(ep, "%s done %p, status %d\n", ep->ep.name, req, status);

	ep->req_pending = 0;
	FUNC3(&udc->lock);
	FUNC5(&ep->ep, &req->req);
	FUNC2(&udc->lock);
}