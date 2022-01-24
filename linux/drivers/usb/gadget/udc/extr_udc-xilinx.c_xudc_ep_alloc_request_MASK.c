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
struct usb_request {int dummy; } ;
struct xusb_req {struct usb_request usb_req; int /*<<< orphan*/  queue; struct xusb_ep* ep; } ;
struct xusb_ep {int dummy; } ;
struct usb_ep {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct xusb_req* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct xusb_ep* FUNC2 (struct usb_ep*) ; 

__attribute__((used)) static struct usb_request *FUNC3(struct usb_ep *_ep,
						 gfp_t gfp_flags)
{
	struct xusb_ep *ep = FUNC2(_ep);
	struct xusb_req *req;

	req = FUNC1(sizeof(*req), gfp_flags);
	if (!req)
		return NULL;

	req->ep = ep;
	FUNC0(&req->queue);
	return &req->usb_req;
}