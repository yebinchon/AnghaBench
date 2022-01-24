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
struct xusb_udc {int /*<<< orphan*/  lock; } ;
struct xusb_req {int dummy; } ;
struct xusb_ep {struct xusb_udc* udc; } ;
struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int FUNC0 (struct xusb_ep*,struct xusb_req*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct xusb_ep* FUNC3 (struct usb_ep*) ; 
 struct xusb_req* FUNC4 (struct usb_request*) ; 

__attribute__((used)) static int FUNC5(struct usb_ep *_ep, struct usb_request *_req,
			  gfp_t gfp_flags)
{
	struct xusb_req *req	= FUNC4(_req);
	struct xusb_ep	*ep0	= FUNC3(_ep);
	struct xusb_udc *udc	= ep0->udc;
	unsigned long flags;
	int ret;

	FUNC1(&udc->lock, flags);
	ret = FUNC0(ep0, req);
	FUNC2(&udc->lock, flags);

	return ret;
}