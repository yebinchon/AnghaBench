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
struct usb_gadget_driver {int dummy; } ;
struct usb_gadget {int dummy; } ;
struct pxa_udc {struct usb_gadget_driver* driver; int /*<<< orphan*/  dev; int /*<<< orphan*/  gadget; TYPE_1__* transceiver; } ;
struct TYPE_2__ {int /*<<< orphan*/  otg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct pxa_udc*) ; 
 struct pxa_udc* FUNC4 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC5 (struct pxa_udc*) ; 

__attribute__((used)) static int FUNC6(struct usb_gadget *g,
		struct usb_gadget_driver *driver)
{
	struct pxa_udc *udc = FUNC4(g);
	int retval;

	/* first hook up the driver ... */
	udc->driver = driver;

	if (!FUNC0(udc->transceiver)) {
		retval = FUNC2(udc->transceiver->otg,
						&udc->gadget);
		if (retval) {
			FUNC1(udc->dev, "can't bind to transceiver\n");
			goto fail;
		}
	}

	if (FUNC3(udc))
		FUNC5(udc);
	return 0;

fail:
	udc->driver = NULL;
	return retval;
}