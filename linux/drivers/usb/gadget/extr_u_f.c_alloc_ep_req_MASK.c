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
struct usb_request {size_t length; int /*<<< orphan*/  buf; } ;
struct usb_ep {int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (struct usb_ep*,size_t) ; 
 struct usb_request* FUNC3 (struct usb_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_ep*,struct usb_request*) ; 

struct usb_request *FUNC5(struct usb_ep *ep, size_t len)
{
	struct usb_request      *req;

	req = FUNC3(ep, GFP_ATOMIC);
	if (req) {
		req->length = FUNC1(ep->desc) ?
			FUNC2(ep, len) : len;
		req->buf = FUNC0(req->length, GFP_ATOMIC);
		if (!req->buf) {
			FUNC4(ep, req);
			req = NULL;
		}
	}
	return req;
}