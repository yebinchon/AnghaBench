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
struct usb_request {int /*<<< orphan*/  actual; } ;
struct cdns3_trb {int /*<<< orphan*/  length; int /*<<< orphan*/  control; } ;
struct cdns3_request {struct cdns3_trb* trb; } ;
struct TYPE_2__ {int /*<<< orphan*/  address; } ;
struct cdns3_endpoint {int dequeue; scalar_t__ type; int flags; struct cdns3_trb* trb_pool; TYPE_1__ endpoint; int /*<<< orphan*/  pending_req_list; } ;
struct cdns3_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EP_PENDING_REQUEST ; 
 int EP_STALLED ; 
 int EP_STALL_PENDING ; 
 int TRBS_PER_SEGMENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRB_LINK ; 
 scalar_t__ USB_ENDPOINT_XFER_ISOC ; 
 int /*<<< orphan*/  FUNC2 (struct cdns3_endpoint*,struct cdns3_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cdns3_request*) ; 
 struct usb_request* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cdns3_endpoint*,struct cdns3_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct cdns3_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cdns3_device*,struct cdns3_endpoint*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,struct cdns3_trb*,struct cdns3_trb*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct cdns3_request* FUNC11 (struct usb_request*) ; 
 int /*<<< orphan*/  FUNC12 (struct cdns3_endpoint*,struct cdns3_trb*) ; 

__attribute__((used)) static void FUNC13(struct cdns3_device *priv_dev,
				     struct cdns3_endpoint *priv_ep)
{
	struct cdns3_request *priv_req;
	struct usb_request *request;
	struct cdns3_trb *trb;

	while (!FUNC10(&priv_ep->pending_req_list)) {
		request = FUNC4(&priv_ep->pending_req_list);
		priv_req = FUNC11(request);

		trb = priv_ep->trb_pool + priv_ep->dequeue;

		/* Request was dequeued and TRB was changed to TRB_LINK. */
		if (FUNC0(trb->control) == TRB_LINK) {
			FUNC12(priv_ep, trb);
			FUNC3(priv_req);
		}

		/* Re-select endpoint. It could be changed by other CPU during
		 * handling usb_gadget_giveback_request.
		 */
		FUNC6(priv_dev, priv_ep->endpoint.address);

		if (!FUNC5(priv_ep, priv_req))
			goto prepare_next_td;

		trb = priv_ep->trb_pool + priv_ep->dequeue;
		FUNC12(priv_ep, trb);

		if (trb != priv_req->trb)
			FUNC8(priv_dev->dev,
				 "request_trb=0x%p, queue_trb=0x%p\n",
				 priv_req->trb, trb);

		request->actual = FUNC1(FUNC9(trb->length));
		FUNC3(priv_req);
		FUNC2(priv_ep, priv_req, 0);

		if (priv_ep->type != USB_ENDPOINT_XFER_ISOC &&
		    TRBS_PER_SEGMENT == 2)
			break;
	}
	priv_ep->flags &= ~EP_PENDING_REQUEST;

prepare_next_td:
	if (!(priv_ep->flags & EP_STALLED) &&
	    !(priv_ep->flags & EP_STALL_PENDING))
		FUNC7(priv_dev, priv_ep);
}