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
struct usb_ctrlrequest {int /*<<< orphan*/  wValue; int /*<<< orphan*/  wIndex; } ;
struct renesas_usb3_request {int dummy; } ;
struct renesas_usb3_ep {int started; } ;
struct renesas_usb3 {int dummy; } ;

/* Variables and functions */
 int USB_ENDPOINT_HALT ; 
 int USB_ENDPOINT_NUMBER_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct renesas_usb3_ep* FUNC1 (struct renesas_usb3*,int) ; 
 struct renesas_usb3_request* FUNC2 (struct renesas_usb3_ep*) ; 
 int /*<<< orphan*/  FUNC3 (struct renesas_usb3_ep*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct renesas_usb3_ep*,struct renesas_usb3_request*) ; 

__attribute__((used)) static bool FUNC5(struct renesas_usb3 *usb3,
					  struct usb_ctrlrequest *ctrl,
					  bool set)
{
	int num = FUNC0(ctrl->wIndex) & USB_ENDPOINT_NUMBER_MASK;
	struct renesas_usb3_ep *usb3_ep;
	struct renesas_usb3_request *usb3_req;

	if (FUNC0(ctrl->wValue) != USB_ENDPOINT_HALT)
		return true;	/* stall */

	usb3_ep = FUNC1(usb3, num);
	FUNC3(usb3_ep, set, true);

	/* Restarts a queue if clear feature */
	if (!set) {
		usb3_ep->started = false;
		usb3_req = FUNC2(usb3_ep);
		if (usb3_req)
			FUNC4(usb3_ep, usb3_req);
	}

	return false;
}