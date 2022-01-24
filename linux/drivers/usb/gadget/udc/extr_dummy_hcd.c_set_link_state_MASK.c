#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct dummy_hcd {scalar_t__ active; int port_status; unsigned int old_status; scalar_t__ old_active; scalar_t__ resuming; struct dummy* dum; } ;
struct TYPE_7__ {scalar_t__ speed; } ;
struct dummy {int /*<<< orphan*/  callback_usage; int /*<<< orphan*/  lock; TYPE_1__ gadget; TYPE_2__* driver; scalar_t__ ints_enabled; scalar_t__ pullup; } ;
struct TYPE_9__ {scalar_t__ speed; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* resume ) (TYPE_1__*) ;int /*<<< orphan*/  (* suspend ) (TYPE_1__*) ;int /*<<< orphan*/  (* disconnect ) (TYPE_1__*) ;} ;

/* Variables and functions */
 scalar_t__ HCD_USB3 ; 
 int USB_PORT_STAT_ENABLE ; 
 unsigned int USB_PORT_STAT_POWER ; 
 unsigned int USB_PORT_STAT_RESET ; 
 scalar_t__ USB_SPEED_SUPER ; 
 unsigned int USB_SS_PORT_STAT_POWER ; 
 TYPE_6__* FUNC0 (struct dummy_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct dummy_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dummy*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC9(struct dummy_hcd *dum_hcd)
{
	struct dummy *dum = dum_hcd->dum;
	unsigned int power_bit;

	dum_hcd->active = 0;
	if (dum->pullup)
		if ((FUNC0(dum_hcd)->speed == HCD_USB3 &&
		     dum->gadget.speed != USB_SPEED_SUPER) ||
		    (FUNC0(dum_hcd)->speed != HCD_USB3 &&
		     dum->gadget.speed == USB_SPEED_SUPER))
			return;

	FUNC1(dum_hcd);
	power_bit = (FUNC0(dum_hcd)->speed == HCD_USB3 ?
			USB_SS_PORT_STAT_POWER : USB_PORT_STAT_POWER);

	if ((dum_hcd->port_status & USB_PORT_STAT_ENABLE) == 0 ||
	     dum_hcd->active)
		dum_hcd->resuming = 0;

	/* Currently !connected or in reset */
	if ((dum_hcd->port_status & power_bit) == 0 ||
			(dum_hcd->port_status & USB_PORT_STAT_RESET) != 0) {
		unsigned int disconnect = power_bit &
				dum_hcd->old_status & (~dum_hcd->port_status);
		unsigned int reset = USB_PORT_STAT_RESET &
				(~dum_hcd->old_status) & dum_hcd->port_status;

		/* Report reset and disconnect events to the driver */
		if (dum->ints_enabled && (disconnect || reset)) {
			FUNC4(dum);
			++dum->callback_usage;
			FUNC3(&dum->lock);
			if (reset)
				FUNC8(&dum->gadget, dum->driver);
			else
				dum->driver->disconnect(&dum->gadget);
			FUNC2(&dum->lock);
			--dum->callback_usage;
		}
	} else if (dum_hcd->active != dum_hcd->old_active &&
			dum->ints_enabled) {
		++dum->callback_usage;
		FUNC3(&dum->lock);
		if (dum_hcd->old_active && dum->driver->suspend)
			dum->driver->suspend(&dum->gadget);
		else if (!dum_hcd->old_active &&  dum->driver->resume)
			dum->driver->resume(&dum->gadget);
		FUNC2(&dum->lock);
		--dum->callback_usage;
	}

	dum_hcd->old_status = dum_hcd->port_status;
	dum_hcd->old_active = dum_hcd->active;
}