#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usba_udc {int /*<<< orphan*/  lock; int /*<<< orphan*/  gadget; } ;
struct TYPE_4__ {int length; scalar_t__ no_interrupt; scalar_t__ short_not_ok; scalar_t__ zero; int /*<<< orphan*/  dma; } ;
struct usba_request {int using_dma; int ctrl; int /*<<< orphan*/  queue; TYPE_2__ req; } ;
struct TYPE_3__ {scalar_t__ desc; int /*<<< orphan*/  name; } ;
struct usba_ep {int /*<<< orphan*/  queue; TYPE_1__ ep; int /*<<< orphan*/  is_in; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  DBG_DMA ; 
 int /*<<< orphan*/  DBG_ERR ; 
 int /*<<< orphan*/  DMA_BUF_LEN ; 
 int EINVAL ; 
 int ESHUTDOWN ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int USBA_DMA_CH_EN ; 
 int USBA_DMA_END_BUF_EN ; 
 int USBA_DMA_END_BUF_IE ; 
 int USBA_DMA_END_TR_EN ; 
 int USBA_DMA_END_TR_IE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct usba_ep*,struct usba_request*) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct usba_udc *udc, struct usba_ep *ep,
		struct usba_request *req, gfp_t gfp_flags)
{
	unsigned long flags;
	int ret;

	FUNC0(DBG_DMA, "%s: req l/%u d/%pad %c%c%c\n",
		ep->ep.name, req->req.length, &req->req.dma,
		req->req.zero ? 'Z' : 'z',
		req->req.short_not_ok ? 'S' : 's',
		req->req.no_interrupt ? 'I' : 'i');

	if (req->req.length > 0x10000) {
		/* Lengths from 0 to 65536 (inclusive) are supported */
		FUNC0(DBG_ERR, "invalid request length %u\n", req->req.length);
		return -EINVAL;
	}

	ret = FUNC7(&udc->gadget, &req->req, ep->is_in);
	if (ret)
		return ret;

	req->using_dma = 1;
	req->ctrl = FUNC1(DMA_BUF_LEN, req->req.length)
			| USBA_DMA_CH_EN | USBA_DMA_END_BUF_IE
			| USBA_DMA_END_BUF_EN;

	if (!ep->is_in)
		req->ctrl |= USBA_DMA_END_TR_EN | USBA_DMA_END_TR_IE;

	/*
	 * Add this request to the queue and submit for DMA if
	 * possible. Check if we're still alive first -- we may have
	 * received a reset since last time we checked.
	 */
	ret = -ESHUTDOWN;
	FUNC4(&udc->lock, flags);
	if (ep->ep.desc) {
		if (FUNC3(&ep->queue))
			FUNC6(ep, req);

		FUNC2(&req->queue, &ep->queue);
		ret = 0;
	}
	FUNC5(&udc->lock, flags);

	return ret;
}