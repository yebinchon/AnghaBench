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
typedef  int u32 ;
struct usb_hcd {int /*<<< orphan*/  state; } ;
struct oxu_hcd {int /*<<< orphan*/  lock; scalar_t__* reset_done; TYPE_1__* regs; int /*<<< orphan*/  hcs_params; } ;
struct TYPE_2__ {int /*<<< orphan*/ * port_status; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PORT_CONNECT ; 
 int PORT_CSC ; 
 int PORT_OCC ; 
 int PORT_PEC ; 
 int PORT_RESUME ; 
 int STS_PCD ; 
 struct oxu_hcd* FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  ignore_oc ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct usb_hcd *hcd, char *buf)
{
	struct oxu_hcd *oxu = FUNC2(hcd);
	u32 temp, mask, status = 0;
	int ports, i, retval = 1;
	unsigned long flags;

	/* if !PM, root hub timers won't get shut down ... */
	if (!FUNC1(hcd->state))
		return 0;

	/* init status to no-changes */
	buf[0] = 0;
	ports = FUNC0(oxu->hcs_params);
	if (ports > 7) {
		buf[1] = 0;
		retval++;
	}

	/* Some boards (mostly VIA?) report bogus overcurrent indications,
	 * causing massive log spam unless we completely ignore them.  It
	 * may be relevant that VIA VT8235 controllers, where PORT_POWER is
	 * always set, seem to clear PORT_OCC and PORT_CSC when writing to
	 * PORT_POWER; that's surprising, but maybe within-spec.
	 */
	if (!ignore_oc)
		mask = PORT_CSC | PORT_PEC | PORT_OCC;
	else
		mask = PORT_CSC | PORT_PEC;

	/* no hub change reports (bit 0) for now (power, ...) */

	/* port N changes (bit N)? */
	FUNC4(&oxu->lock, flags);
	for (i = 0; i < ports; i++) {
		temp = FUNC3(&oxu->regs->port_status[i]);

		/*
		 * Return status information even for ports with OWNER set.
		 * Otherwise hub_wq wouldn't see the disconnect event when a
		 * high-speed device is switched over to the companion
		 * controller by the user.
		 */

		if (!(temp & PORT_CONNECT))
			oxu->reset_done[i] = 0;
		if ((temp & mask) != 0 || ((temp & PORT_RESUME) != 0 &&
				FUNC6(jiffies, oxu->reset_done[i]))) {
			if (i < 7)
				buf[0] |= 1 << (i + 1);
			else
				buf[1] |= 1 << (i - 7);
			status = STS_PCD;
		}
	}
	/* FIXME autosuspend idle root hubs */
	FUNC5(&oxu->lock, flags);
	return status ? retval : 0;
}