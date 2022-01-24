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
struct nbu2ss_udc {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int status; scalar_t__ dma; int /*<<< orphan*/  (* complete ) (int /*<<< orphan*/ *,TYPE_1__*) ;} ;
struct nbu2ss_req {TYPE_1__ req; int /*<<< orphan*/  queue; } ;
struct nbu2ss_ep {scalar_t__ direct; scalar_t__ epnum; int /*<<< orphan*/  ep; int /*<<< orphan*/  queue; scalar_t__ stalled; struct nbu2ss_udc* udc; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int EINPROGRESS ; 
 scalar_t__ USB_DIR_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct nbu2ss_udc*,struct nbu2ss_ep*,struct nbu2ss_req*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct nbu2ss_udc*,struct nbu2ss_ep*) ; 
 int /*<<< orphan*/  FUNC2 (struct nbu2ss_udc*,struct nbu2ss_ep*) ; 
 int /*<<< orphan*/  FUNC3 (struct nbu2ss_ep*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC10(struct nbu2ss_ep *ep,
			    struct nbu2ss_req *req,
			    int status)
{
	struct nbu2ss_udc *udc = ep->udc;

	FUNC5(&req->queue);

	if (status == -ECONNRESET)
		FUNC2(udc, ep);

	if (FUNC4(req->req.status == -EINPROGRESS))
		req->req.status = status;

	if (ep->stalled) {
		FUNC1(udc, ep);
	} else {
		if (!FUNC6(&ep->queue))
			FUNC3(ep);
	}

#ifdef USE_DMA
	if ((ep->direct == USB_DIR_OUT) && (ep->epnum > 0) &&
	    (req->req.dma != 0))
		_nbu2ss_dma_unmap_single(udc, ep, req, USB_DIR_OUT);
#endif

	FUNC8(&udc->lock);
	req->req.complete(&ep->ep, &req->req);
	FUNC7(&udc->lock);
}