#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vudc {int /*<<< orphan*/  lock; } ;
struct vrequest {int /*<<< orphan*/  req_entry; } ;
struct vep {int /*<<< orphan*/  req_queue; } ;
struct usb_request {int /*<<< orphan*/  status; scalar_t__ actual; } ;
struct usb_ep {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int EINVAL ; 
 struct vudc* FUNC0 (struct vep*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vep* FUNC4 (struct usb_ep*) ; 
 struct vrequest* FUNC5 (struct usb_request*) ; 

__attribute__((used)) static int FUNC6(struct usb_ep *_ep, struct usb_request *_req,
		gfp_t mem_flags)
{
	struct vep *ep;
	struct vrequest *req;
	struct vudc *udc;
	unsigned long flags;

	if (!_ep || !_req)
		return -EINVAL;

	ep = FUNC4(_ep);
	req = FUNC5(_req);
	udc = FUNC0(ep);

	FUNC2(&udc->lock, flags);
	_req->actual = 0;
	_req->status = -EINPROGRESS;

	FUNC1(&req->req_entry, &ep->req_queue);
	FUNC3(&udc->lock, flags);

	return 0;
}