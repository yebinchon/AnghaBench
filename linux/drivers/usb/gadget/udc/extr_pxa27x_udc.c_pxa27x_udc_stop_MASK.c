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
struct usb_gadget {int dummy; } ;
struct pxa_udc {TYPE_1__* transceiver; int /*<<< orphan*/ * driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  otg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_udc*) ; 
 struct pxa_udc* FUNC3 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa_udc*) ; 

__attribute__((used)) static int FUNC5(struct usb_gadget *g)
{
	struct pxa_udc *udc = FUNC3(g);

	FUNC2(udc);
	FUNC4(udc);

	udc->driver = NULL;

	if (!FUNC0(udc->transceiver))
		return FUNC1(udc->transceiver->otg, NULL);
	return 0;
}