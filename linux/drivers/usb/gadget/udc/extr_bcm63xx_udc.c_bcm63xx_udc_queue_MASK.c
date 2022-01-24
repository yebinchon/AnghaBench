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
struct usb_request {scalar_t__ status; scalar_t__ actual; int /*<<< orphan*/  buf; int /*<<< orphan*/  complete; } ;
struct usb_ep {int dummy; } ;
struct bcm63xx_udc {int /*<<< orphan*/  lock; int /*<<< orphan*/  gadget; int /*<<< orphan*/  ep0_wq; struct usb_request* ep0_reply; struct bcm63xx_ep* bep; } ;
struct bcm63xx_req {int /*<<< orphan*/  queue; scalar_t__ offset; } ;
struct bcm63xx_ep {TYPE_1__* iudma; int /*<<< orphan*/  queue; struct bcm63xx_udc* udc; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  is_tx; int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int EINVAL ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct bcm63xx_udc*,TYPE_1__*,struct bcm63xx_req*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct bcm63xx_ep* FUNC3 (struct usb_ep*) ; 
 struct bcm63xx_req* FUNC4 (struct usb_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct usb_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct usb_ep *ep, struct usb_request *req,
	gfp_t mem_flags)
{
	struct bcm63xx_ep *bep = FUNC3(ep);
	struct bcm63xx_udc *udc = bep->udc;
	struct bcm63xx_req *breq = FUNC4(req);
	unsigned long flags;
	int rc = 0;

	if (FUNC8(!req || !req->complete || !req->buf || !ep))
		return -EINVAL;

	req->actual = 0;
	req->status = 0;
	breq->offset = 0;

	if (bep == &udc->bep[0]) {
		/* only one reply per request, please */
		if (udc->ep0_reply)
			return -EINVAL;

		udc->ep0_reply = req;
		FUNC5(&udc->ep0_wq);
		return 0;
	}

	FUNC6(&udc->lock, flags);
	if (!bep->iudma->enabled) {
		rc = -ESHUTDOWN;
		goto out;
	}

	rc = FUNC9(&udc->gadget, req, bep->iudma->is_tx);
	if (rc == 0) {
		FUNC1(&breq->queue, &bep->queue);
		if (FUNC2(&bep->queue))
			FUNC0(udc, bep->iudma, breq);
	}

out:
	FUNC7(&udc->lock, flags);
	return rc;
}