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
struct usb_request {scalar_t__ actual; int /*<<< orphan*/  status; int /*<<< orphan*/  length; } ;
struct usb_ep {int dummy; } ;
struct renesas_usb3_request {int /*<<< orphan*/  queue; } ;
struct renesas_usb3_ep {int /*<<< orphan*/  num; int /*<<< orphan*/  queue; } ;
struct renesas_usb3 {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct renesas_usb3* FUNC4 (struct renesas_usb3_ep*) ; 
 int /*<<< orphan*/  FUNC5 (struct renesas_usb3_ep*,struct renesas_usb3_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct renesas_usb3_ep*,struct renesas_usb3_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct renesas_usb3*) ; 
 struct renesas_usb3_ep* FUNC8 (struct usb_ep*) ; 
 struct renesas_usb3_request* FUNC9 (struct usb_request*) ; 

__attribute__((used)) static int FUNC10(struct usb_ep *_ep, struct usb_request *_req,
				 gfp_t gfp_flags)
{
	struct renesas_usb3_ep *usb3_ep = FUNC8(_ep);
	struct renesas_usb3_request *usb3_req = FUNC9(_req);
	struct renesas_usb3 *usb3 = FUNC4(usb3_ep);
	unsigned long flags;

	FUNC0(FUNC7(usb3), "ep_queue: ep%2d, %u\n", usb3_ep->num,
		_req->length);

	_req->status = -EINPROGRESS;
	_req->actual = 0;
	FUNC2(&usb3->lock, flags);
	FUNC1(&usb3_req->queue, &usb3_ep->queue);
	FUNC3(&usb3->lock, flags);

	if (!usb3_ep->num)
		FUNC5(usb3_ep, usb3_req);
	else
		FUNC6(usb3_ep, usb3_req);

	return 0;
}