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
struct TYPE_3__ {scalar_t__ speed; } ;
struct usba_udc {int /*<<< orphan*/  lock; TYPE_1__ gadget; int /*<<< orphan*/  driver; } ;
struct usba_request {int /*<<< orphan*/  queue; scalar_t__ last_transaction; scalar_t__ using_dma; scalar_t__ submitted; } ;
struct TYPE_4__ {scalar_t__ desc; int /*<<< orphan*/  name; } ;
struct usba_ep {scalar_t__ state; scalar_t__ is_in; int /*<<< orphan*/  queue; TYPE_2__ ep; scalar_t__ can_dma; struct usba_udc* udc; } ;
struct usb_request {scalar_t__ actual; int /*<<< orphan*/  status; int /*<<< orphan*/  length; } ;
struct usb_ep {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_ENB ; 
 scalar_t__ DATA_STAGE_IN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,struct usba_request*,int /*<<< orphan*/ ) ; 
 int DBG_GADGET ; 
 int DBG_QUEUE ; 
 int DBG_REQ ; 
 int /*<<< orphan*/  EINPROGRESS ; 
 int ESHUTDOWN ; 
 scalar_t__ STATUS_STAGE_IN ; 
 int /*<<< orphan*/  USBA_RX_BK_RDY ; 
 int /*<<< orphan*/  USBA_TX_PK_RDY ; 
 scalar_t__ USB_SPEED_UNKNOWN ; 
 scalar_t__ FUNC1 (struct usba_ep*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct usba_udc*,struct usba_ep*,struct usba_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct usba_ep* FUNC6 (struct usb_ep*) ; 
 struct usba_request* FUNC7 (struct usb_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct usba_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct usb_ep *_ep, struct usb_request *_req, gfp_t gfp_flags)
{
	struct usba_request *req = FUNC7(_req);
	struct usba_ep *ep = FUNC6(_ep);
	struct usba_udc *udc = ep->udc;
	unsigned long flags;
	int ret;

	FUNC0(DBG_GADGET | DBG_QUEUE | DBG_REQ, "%s: queue req %p, len %u\n",
			ep->ep.name, req, _req->length);

	if (!udc->driver || udc->gadget.speed == USB_SPEED_UNKNOWN ||
	    !ep->ep.desc)
		return -ESHUTDOWN;

	req->submitted = 0;
	req->using_dma = 0;
	req->last_transaction = 0;

	_req->status = -EINPROGRESS;
	_req->actual = 0;

	if (ep->can_dma)
		return FUNC3(udc, ep, req, gfp_flags);

	/* May have received a reset since last time we checked */
	ret = -ESHUTDOWN;
	FUNC4(&udc->lock, flags);
	if (ep->ep.desc) {
		FUNC2(&req->queue, &ep->queue);

		if ((!FUNC1(ep) && ep->is_in) ||
			(FUNC1(ep)
				&& (ep->state == DATA_STAGE_IN
					|| ep->state == STATUS_STAGE_IN)))
			FUNC8(ep, CTL_ENB, USBA_TX_PK_RDY);
		else
			FUNC8(ep, CTL_ENB, USBA_RX_BK_RDY);
		ret = 0;
	}
	FUNC5(&udc->lock, flags);

	return ret;
}