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
struct usb_request {int /*<<< orphan*/  length; scalar_t__ actual; int /*<<< orphan*/  status; int /*<<< orphan*/  short_not_ok; int /*<<< orphan*/  zero; int /*<<< orphan*/  buf; int /*<<< orphan*/  complete; } ;
struct usb_ep {int dummy; } ;
struct device {int dummy; } ;
struct ast_vhub_req {int last_desc; int active; int /*<<< orphan*/  queue; int /*<<< orphan*/  internal; } ;
struct TYPE_6__ {scalar_t__ state; int /*<<< orphan*/  ctlstat; scalar_t__ dir_in; } ;
struct ast_vhub_ep {scalar_t__ d_idx; TYPE_3__ ep0; int /*<<< orphan*/  queue; TYPE_2__* dev; struct ast_vhub* vhub; } ;
struct ast_vhub {int /*<<< orphan*/  lock; TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_5__ {int /*<<< orphan*/  enabled; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  EINPROGRESS ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ast_vhub_ep*,char*,...) ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  VHUB_EP0_TX_BUFF_RDY ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ast_vhub_ep*,struct ast_vhub_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ast_vhub_ep*,struct ast_vhub_req*) ; 
 int /*<<< orphan*/  FUNC4 (struct ast_vhub_ep*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 scalar_t__ ep0_state_stall ; 
 scalar_t__ ep0_state_status ; 
 scalar_t__ ep0_state_token ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ast_vhub_ep* FUNC10 (struct usb_ep*) ; 
 struct ast_vhub_req* FUNC11 (struct usb_request*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct usb_ep* u_ep, struct usb_request *u_req,
			      gfp_t gfp_flags)
{
	struct ast_vhub_req *req = FUNC11(u_req);
	struct ast_vhub_ep *ep = FUNC10(u_ep);
	struct ast_vhub *vhub = ep->vhub;
	struct device *dev = &vhub->pdev->dev;
	unsigned long flags;

	/* Paranoid cheks */
	if (!u_req || (!u_req->complete && !req->internal)) {
		FUNC5(dev, "Bogus EP0 request ! u_req=%p\n", u_req);
		if (u_req) {
			FUNC5(dev, "complete=%p internal=%d\n",
				 u_req->complete, req->internal);
		}
		return -EINVAL;
	}

	/* Not endpoint 0 ? */
	if (FUNC1(ep->d_idx != 0))
		return -EINVAL;

	/* Disabled device */
	if (ep->dev && !ep->dev->enabled)
		return -ESHUTDOWN;

	/* Data, no buffer and not internal ? */
	if (u_req->length && !u_req->buf && !req->internal) {
		FUNC5(dev, "Request with no buffer !\n");
		return -EINVAL;
	}

	FUNC0(ep, "enqueue req @%p\n", req);
	FUNC0(ep, "  l=%d zero=%d noshort=%d is_in=%d\n",
	       u_req->length, u_req->zero,
	       u_req->short_not_ok, ep->ep0.dir_in);

	/* Initialize request progress fields */
	u_req->status = -EINPROGRESS;
	u_req->actual = 0;
	req->last_desc = -1;
	req->active = false;

	FUNC8(&vhub->lock, flags);

	/* EP0 can only support a single request at a time */
	if (!FUNC7(&ep->queue) ||
	    ep->ep0.state == ep0_state_token ||
	    ep->ep0.state == ep0_state_stall) {
		FUNC5(dev, "EP0: Request in wrong state\n");
	        FUNC0(ep, "EP0: list_empty=%d state=%d\n",
		       FUNC7(&ep->queue), ep->ep0.state);
		FUNC9(&vhub->lock, flags);
		return -EBUSY;
	}

	/* Add request to list and kick processing if empty */
	FUNC6(&req->queue, &ep->queue);

	if (ep->ep0.dir_in) {
		/* IN request, send data */
		FUNC3(ep, req);
	} else if (u_req->length == 0) {
		/* 0-len request, send completion as rx */
		FUNC0(ep, "0-length rx completion\n");
		ep->ep0.state = ep0_state_status;
		FUNC12(VHUB_EP0_TX_BUFF_RDY, ep->ep0.ctlstat);
		FUNC2(ep, req, 0);
	} else {
		/* OUT request, start receiver */
		FUNC4(ep);
	}

	FUNC9(&vhub->lock, flags);

	return 0;
}