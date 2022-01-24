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
struct fsl_udc {scalar_t__ ep0_state; struct fsl_ep* eps; int /*<<< orphan*/  ep0_dir; struct fsl_req* status_req; } ;
struct TYPE_4__ {int /*<<< orphan*/  complete; scalar_t__ actual; int /*<<< orphan*/  status; scalar_t__ length; } ;
struct fsl_req {int /*<<< orphan*/  queue; TYPE_2__ req; scalar_t__ dtd_count; struct fsl_ep* ep; } ;
struct fsl_ep {int /*<<< orphan*/  queue; TYPE_1__* udc; } ;
struct TYPE_3__ {int /*<<< orphan*/  gadget; } ;

/* Variables and functions */
 scalar_t__ DATA_STATE_XMIT ; 
 int /*<<< orphan*/  EINPROGRESS ; 
 int ENOMEM ; 
 int EP_DIR_IN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  USB_DIR_IN ; 
 int /*<<< orphan*/  USB_DIR_OUT ; 
 scalar_t__ WAIT_FOR_OUT_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct fsl_ep*) ; 
 int /*<<< orphan*/  fsl_noop_complete ; 
 int /*<<< orphan*/  FUNC1 (struct fsl_ep*,struct fsl_req*) ; 
 scalar_t__ FUNC2 (struct fsl_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct fsl_udc *udc, int direction)
{
	struct fsl_req *req = udc->status_req;
	struct fsl_ep *ep;
	int ret;

	if (direction == EP_DIR_IN)
		udc->ep0_dir = USB_DIR_IN;
	else
		udc->ep0_dir = USB_DIR_OUT;

	ep = &udc->eps[0];
	if (udc->ep0_state != DATA_STATE_XMIT)
		udc->ep0_state = WAIT_FOR_OUT_STATUS;

	req->ep = ep;
	req->req.length = 0;
	req->req.status = -EINPROGRESS;
	req->req.actual = 0;
	req->req.complete = fsl_noop_complete;
	req->dtd_count = 0;

	ret = FUNC4(&ep->udc->gadget, &req->req, FUNC0(ep));
	if (ret)
		return ret;

	if (FUNC2(req, GFP_ATOMIC) == 0)
		FUNC1(ep, req);
	else
		return -ENOMEM;

	FUNC3(&req->queue, &ep->queue);

	return 0;
}