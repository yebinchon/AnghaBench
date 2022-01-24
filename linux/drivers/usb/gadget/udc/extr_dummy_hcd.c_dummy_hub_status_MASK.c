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
struct usb_hcd {int dummy; } ;
struct dummy_hcd {int port_status; scalar_t__ rh_state; TYPE_1__* dum; int /*<<< orphan*/  re_timeout; scalar_t__ resuming; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ DUMMY_RH_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (struct usb_hcd*) ; 
 int PORT_C_MASK ; 
 int USB_PORT_STAT_C_SUSPEND ; 
 int USB_PORT_STAT_SUSPEND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dummy_hcd*) ; 
 struct dummy_hcd* FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct dummy_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC9(struct usb_hcd *hcd, char *buf)
{
	struct dummy_hcd	*dum_hcd;
	unsigned long		flags;
	int			retval = 0;

	dum_hcd = FUNC3(hcd);

	FUNC5(&dum_hcd->dum->lock, flags);
	if (!FUNC0(hcd))
		goto done;

	if (dum_hcd->resuming && FUNC7(jiffies, dum_hcd->re_timeout)) {
		dum_hcd->port_status |= (USB_PORT_STAT_C_SUSPEND << 16);
		dum_hcd->port_status &= ~USB_PORT_STAT_SUSPEND;
		FUNC4(dum_hcd);
	}

	if ((dum_hcd->port_status & PORT_C_MASK) != 0) {
		*buf = (1 << 1);
		FUNC1(FUNC2(dum_hcd), "port status 0x%08x has changes\n",
				dum_hcd->port_status);
		retval = 1;
		if (dum_hcd->rh_state == DUMMY_RH_SUSPENDED)
			FUNC8(hcd);
	}
done:
	FUNC6(&dum_hcd->dum->lock, flags);
	return retval;
}