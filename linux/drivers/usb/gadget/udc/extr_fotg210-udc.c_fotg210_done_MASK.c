#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int status; } ;
struct fotg210_request {TYPE_2__ req; int /*<<< orphan*/  queue; } ;
struct fotg210_ep {TYPE_3__* fotg210; int /*<<< orphan*/  queue; scalar_t__ epnum; int /*<<< orphan*/  ep; } ;
struct TYPE_4__ {scalar_t__ speed; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; TYPE_1__ gadget; } ;

/* Variables and functions */
 int ESHUTDOWN ; 
 scalar_t__ USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct fotg210_ep*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static void FUNC7(struct fotg210_ep *ep, struct fotg210_request *req,
			int status)
{
	FUNC2(&req->queue);

	/* don't modify queue heads during completion callback */
	if (ep->fotg210->gadget.speed == USB_SPEED_UNKNOWN)
		req->req.status = -ESHUTDOWN;
	else
		req->req.status = status;

	FUNC5(&ep->fotg210->lock);
	FUNC6(&ep->ep, &req->req);
	FUNC4(&ep->fotg210->lock);

	if (ep->epnum) {
		if (FUNC3(&ep->queue))
			FUNC0(ep);
	} else {
		FUNC1(ep->fotg210);
	}
}