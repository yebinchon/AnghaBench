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
struct usb_ctrlrequest {int dummy; } ;
struct renesas_usb3_ep {scalar_t__ started; } ;
struct renesas_usb3 {int /*<<< orphan*/  gadget; TYPE_1__* driver; } ;
struct TYPE_2__ {scalar_t__ (* setup ) (int /*<<< orphan*/ *,struct usb_ctrlrequest*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNRESET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct usb_ctrlrequest*) ; 
 struct renesas_usb3_ep* FUNC1 (struct renesas_usb3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct renesas_usb3_ep*) ; 
 int /*<<< orphan*/  FUNC3 (struct renesas_usb3*,struct usb_ctrlrequest*) ; 
 int /*<<< orphan*/  FUNC4 (struct renesas_usb3*,struct usb_ctrlrequest*) ; 
 int /*<<< orphan*/  FUNC5 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC6 (struct renesas_usb3_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct renesas_usb3*) ; 

__attribute__((used)) static void FUNC8(struct renesas_usb3 *usb3)
{
	struct usb_ctrlrequest ctrl;
	struct renesas_usb3_ep *usb3_ep = FUNC1(usb3, 0);

	/* Call giveback function if previous transfer is not completed */
	if (usb3_ep->started)
		FUNC6(usb3_ep, FUNC2(usb3_ep),
				  -ECONNRESET);

	FUNC5(usb3);
	FUNC3(usb3, &ctrl);
	if (!FUNC4(usb3, &ctrl))
		if (usb3->driver->setup(&usb3->gadget, &ctrl) < 0)
			FUNC7(usb3);
}