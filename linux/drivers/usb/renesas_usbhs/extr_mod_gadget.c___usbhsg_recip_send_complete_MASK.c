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
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;
struct usbhsg_request {TYPE_1__ pkt; } ;
struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_ep*,struct usb_request*) ; 
 struct usbhsg_request* FUNC2 (struct usb_request*) ; 

__attribute__((used)) static void FUNC3(struct usb_ep *ep,
					 struct usb_request *req)
{
	struct usbhsg_request *ureq = FUNC2(req);

	/* free allocated recip-buffer/usb_request */
	FUNC0(ureq->pkt.buf);
	FUNC1(ep, req);
}