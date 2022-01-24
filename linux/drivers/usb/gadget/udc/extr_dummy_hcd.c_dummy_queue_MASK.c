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
struct usb_request {int /*<<< orphan*/  status; scalar_t__ length; scalar_t__ actual; int /*<<< orphan*/  complete; struct dummy* context; int /*<<< orphan*/  buf; } ;
struct usb_ep {int /*<<< orphan*/  name; } ;
struct dummy_request {int /*<<< orphan*/  queue; struct usb_request req; } ;
struct dummy_hcd {int dummy; } ;
struct dummy_ep {int /*<<< orphan*/  queue; TYPE_1__* desc; } ;
struct dummy {int /*<<< orphan*/  lock; int /*<<< orphan*/  fifo_buf; struct dummy_request fifo_req; int /*<<< orphan*/  driver; int /*<<< orphan*/  gadget; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int bEndpointAddress; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int EINVAL ; 
 int ESHUTDOWN ; 
 scalar_t__ FIFO_SIZE ; 
 int USB_DIR_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct dummy_ep*,struct usb_request*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ep0name ; 
 struct dummy* FUNC1 (struct dummy_ep*) ; 
 int /*<<< orphan*/  fifo_complete ; 
 struct dummy_hcd* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dummy_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct dummy*) ; 
 struct dummy_ep* FUNC12 (struct usb_ep*) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_ep*,struct usb_request*) ; 
 struct dummy_request* FUNC14 (struct usb_request*) ; 

__attribute__((used)) static int FUNC15(struct usb_ep *_ep, struct usb_request *_req,
		gfp_t mem_flags)
{
	struct dummy_ep		*ep;
	struct dummy_request	*req;
	struct dummy		*dum;
	struct dummy_hcd	*dum_hcd;
	unsigned long		flags;

	req = FUNC14(_req);
	if (!_req || !FUNC5(&req->queue) || !_req->complete)
		return -EINVAL;

	ep = FUNC12(_ep);
	if (!_ep || (!ep->desc && _ep->name != ep0name))
		return -EINVAL;

	dum = FUNC1(ep);
	dum_hcd = FUNC2(&dum->gadget);
	if (!dum->driver || !FUNC3(dum_hcd))
		return -ESHUTDOWN;

#if 0
	dev_dbg(udc_dev(dum), "ep %p queue req %p to %s, len %d buf %p\n",
			ep, _req, _ep->name, _req->length, _req->buf);
#endif
	_req->status = -EINPROGRESS;
	_req->actual = 0;
	FUNC8(&dum->lock, flags);

	/* implement an emulated single-request FIFO */
	if (ep->desc && (ep->desc->bEndpointAddress & USB_DIR_IN) &&
			FUNC5(&dum->fifo_req.queue) &&
			FUNC5(&ep->queue) &&
			_req->length <= FIFO_SIZE) {
		req = &dum->fifo_req;
		req->req = *_req;
		req->req.buf = dum->fifo_buf;
		FUNC6(dum->fifo_buf, _req->buf, _req->length);
		req->req.context = dum;
		req->req.complete = fifo_complete;

		FUNC4(&req->queue, &ep->queue);
		FUNC9(&dum->lock);
		_req->actual = _req->length;
		_req->status = 0;
		FUNC13(_ep, _req);
		FUNC7(&dum->lock);
	}  else
		FUNC4(&req->queue, &ep->queue);
	FUNC10(&dum->lock, flags);

	/* real hardware would likely enable transfers here, in case
	 * it'd been left NAKing.
	 */
	return 0;
}