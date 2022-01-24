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
struct renesas_usb3_request {int dummy; } ;
struct renesas_usb3_ep {scalar_t__ dir_in; } ;
struct renesas_usb3 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  PN_INT_BFRDY ; 
 int /*<<< orphan*/  USB3_PN_INT_ENA ; 
 int /*<<< orphan*/  USB3_PN_READ ; 
 int /*<<< orphan*/  USB3_PN_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct renesas_usb3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct renesas_usb3_ep* FUNC3 (struct renesas_usb3*,int) ; 
 struct renesas_usb3_request* FUNC4 (struct renesas_usb3_ep*) ; 
 scalar_t__ FUNC5 (struct renesas_usb3*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct renesas_usb3_ep*,struct renesas_usb3_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct renesas_usb3*,struct renesas_usb3_ep*,struct renesas_usb3_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct renesas_usb3_ep*,struct renesas_usb3_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct renesas_usb3 *usb3, int num)
{
	struct renesas_usb3_ep *usb3_ep = FUNC3(usb3, num);
	struct renesas_usb3_request *usb3_req = FUNC4(usb3_ep);
	bool done = false;

	if (!usb3_req)
		return;

	FUNC0(&usb3->lock);
	if (FUNC5(usb3, num))
		goto out;

	if (usb3_ep->dir_in) {
		/* Do not stop the IN pipe here to detect LSTTR interrupt */
		if (!FUNC8(usb3_ep, usb3_req, USB3_PN_WRITE))
			FUNC2(usb3, PN_INT_BFRDY, USB3_PN_INT_ENA);
	} else {
		if (!FUNC6(usb3_ep, usb3_req, USB3_PN_READ))
			done = true;
	}

out:
	/* need to unlock because usb3_request_done_pipen() locks it */
	FUNC1(&usb3->lock);

	if (done)
		FUNC7(usb3, usb3_ep, usb3_req, 0);
}