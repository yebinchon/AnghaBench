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
struct usb_ep {int dummy; } ;
struct renesas_usb3_request {int dummy; } ;
struct renesas_usb3_ep {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESHUTDOWN ; 
 int FUNC0 (struct renesas_usb3_ep*) ; 
 int /*<<< orphan*/  FUNC1 (struct renesas_usb3_ep*,struct renesas_usb3_request*) ; 
 struct renesas_usb3_request* FUNC2 (struct renesas_usb3_ep*) ; 
 int /*<<< orphan*/  FUNC3 (struct renesas_usb3_ep*,struct renesas_usb3_request*,int /*<<< orphan*/ ) ; 
 struct renesas_usb3_ep* FUNC4 (struct usb_ep*) ; 

__attribute__((used)) static int FUNC5(struct usb_ep *_ep)
{
	struct renesas_usb3_ep *usb3_ep = FUNC4(_ep);
	struct renesas_usb3_request *usb3_req;

	do {
		usb3_req = FUNC2(usb3_ep);
		if (!usb3_req)
			break;
		FUNC1(usb3_ep, usb3_req);
		FUNC3(usb3_ep, usb3_req, -ESHUTDOWN);
	} while (1);

	return FUNC0(usb3_ep);
}