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
struct pxa25x_udc {int /*<<< orphan*/ * driver; TYPE_1__* transceiver; scalar_t__ pullup; } ;
struct TYPE_2__ {int /*<<< orphan*/  otg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa25x_udc*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pxa25x_udc*,int /*<<< orphan*/ *) ; 
 struct pxa25x_udc* FUNC6 (struct usb_gadget*) ; 

__attribute__((used)) static int FUNC7(struct usb_gadget*g)
{
	struct pxa25x_udc	*dev = FUNC6(g);

	FUNC2();
	dev->pullup = 0;
	FUNC5(dev, NULL);
	FUNC3();

	if (!FUNC0(dev->transceiver))
		(void) FUNC4(dev->transceiver->otg, NULL);

	dev->driver = NULL;

	FUNC1(dev);

	return 0;
}