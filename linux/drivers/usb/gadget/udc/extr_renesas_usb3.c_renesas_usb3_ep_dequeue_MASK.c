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
struct usb_request {int /*<<< orphan*/  length; } ;
struct usb_ep {int dummy; } ;
struct renesas_usb3_request {int dummy; } ;
struct renesas_usb3_ep {int /*<<< orphan*/  num; } ;
struct renesas_usb3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct renesas_usb3_ep*,struct renesas_usb3_request*) ; 
 struct renesas_usb3* FUNC2 (struct renesas_usb3_ep*) ; 
 int /*<<< orphan*/  FUNC3 (struct renesas_usb3*,struct renesas_usb3_ep*,struct renesas_usb3_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct renesas_usb3*) ; 
 struct renesas_usb3_ep* FUNC5 (struct usb_ep*) ; 
 struct renesas_usb3_request* FUNC6 (struct usb_request*) ; 

__attribute__((used)) static int FUNC7(struct usb_ep *_ep, struct usb_request *_req)
{
	struct renesas_usb3_ep *usb3_ep = FUNC5(_ep);
	struct renesas_usb3_request *usb3_req = FUNC6(_req);
	struct renesas_usb3 *usb3 = FUNC2(usb3_ep);

	FUNC0(FUNC4(usb3), "ep_dequeue: ep%2d, %u\n", usb3_ep->num,
		_req->length);

	FUNC1(usb3_ep, usb3_req);
	FUNC3(usb3, usb3_ep, usb3_req, -ECONNRESET);

	return 0;
}