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
struct usba_udc {int vbus_prev; int suspended; int /*<<< orphan*/  vbus_mutex; int /*<<< orphan*/  gadget; TYPE_1__* driver; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* disconnect ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct usba_udc*) ; 
 int /*<<< orphan*/  FUNC5 (struct usba_udc*) ; 
 int FUNC6 (struct usba_udc*) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *devid)
{
	struct usba_udc *udc = devid;
	int vbus;

	/* debounce */
	FUNC3(10);

	FUNC0(&udc->vbus_mutex);

	vbus = FUNC6(udc);
	if (vbus != udc->vbus_prev) {
		if (vbus) {
			FUNC4(udc);
		} else {
			udc->suspended = false;
			FUNC5(udc);

			if (udc->driver->disconnect)
				udc->driver->disconnect(&udc->gadget);
		}
		udc->vbus_prev = vbus;
	}

	FUNC1(&udc->vbus_mutex);
	return IRQ_HANDLED;
}