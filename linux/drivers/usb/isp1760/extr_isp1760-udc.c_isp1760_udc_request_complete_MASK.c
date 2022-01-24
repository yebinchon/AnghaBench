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
struct isp1760_udc {scalar_t__ ep0_dir; int /*<<< orphan*/  lock; TYPE_1__* isp; } ;
struct TYPE_4__ {int status; int /*<<< orphan*/  (* complete ) (int /*<<< orphan*/ *,TYPE_2__*) ;} ;
struct isp1760_request {TYPE_2__ req; int /*<<< orphan*/ * ep; } ;
struct isp1760_ep {scalar_t__ addr; int /*<<< orphan*/  ep; struct isp1760_udc* udc; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ USB_DIR_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct isp1760_request*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct isp1760_ep*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(struct isp1760_ep *ep,
					 struct isp1760_request *req,
					 int status)
{
	struct isp1760_udc *udc = ep->udc;
	unsigned long flags;

	FUNC0(ep->udc->isp->dev, "completing request %p with status %d\n",
		req, status);

	req->ep = NULL;
	req->req.status = status;
	req->req.complete(&ep->ep, &req->req);

	FUNC2(&udc->lock, flags);

	/*
	 * When completing control OUT requests, move to the status stage after
	 * calling the request complete callback. This gives the gadget an
	 * opportunity to stall the control transfer if needed.
	 */
	if (status == 0 && ep->addr == 0 && udc->ep0_dir == USB_DIR_OUT)
		FUNC1(ep, USB_DIR_OUT);

	FUNC3(&udc->lock, flags);
}