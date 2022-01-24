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
struct usb_hcd {int /*<<< orphan*/  rh_timer; } ;
struct ehci_hcd {int resuming_ports; int /*<<< orphan*/  lock; scalar_t__* reset_done; int /*<<< orphan*/  port_c_suspend; TYPE_1__* regs; scalar_t__ has_ppcd; int /*<<< orphan*/  hcs_params; } ;
struct TYPE_2__ {int /*<<< orphan*/ * port_status; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PORT_CSC ; 
 int PORT_OCC ; 
 int PORT_PEC ; 
 int STS_PCD ; 
 int FUNC1 (struct ehci_hcd*,int /*<<< orphan*/ *) ; 
 struct ehci_hcd* FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  ignore_oc ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC9 (struct usb_hcd *hcd, char *buf)
{
	struct ehci_hcd	*ehci = FUNC2 (hcd);
	u32		temp, status;
	u32		mask;
	int		ports, i, retval = 1;
	unsigned long	flags;
	u32		ppcd = ~0;

	/* init status to no-changes */
	buf [0] = 0;
	ports = FUNC0 (ehci->hcs_params);
	if (ports > 7) {
		buf [1] = 0;
		retval++;
	}

	/* Inform the core about resumes-in-progress by returning
	 * a non-zero value even if there are no status changes.
	 */
	status = ehci->resuming_ports;

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
	// PORT_RESUME from hardware ~= PORT_STAT_C_SUSPEND

	/* no hub change reports (bit 0) for now (power, ...) */

	/* port N changes (bit N)? */
	FUNC5 (&ehci->lock, flags);

	/* get per-port change detect bits */
	if (ehci->has_ppcd)
		ppcd = FUNC1(ehci, &ehci->regs->status) >> 16;

	for (i = 0; i < ports; i++) {
		/* leverage per-port change bits feature */
		if (ppcd & (1 << i))
			temp = FUNC1(ehci, &ehci->regs->port_status[i]);
		else
			temp = 0;

		/*
		 * Return status information even for ports with OWNER set.
		 * Otherwise hub_wq wouldn't see the disconnect event when a
		 * high-speed device is switched over to the companion
		 * controller by the user.
		 */

		if ((temp & mask) != 0 || FUNC7(i, &ehci->port_c_suspend)
				|| (ehci->reset_done[i] && FUNC8(
					jiffies, ehci->reset_done[i]))) {
			if (i < 7)
			    buf [0] |= 1 << (i + 1);
			else
			    buf [1] |= 1 << (i - 7);
			status = STS_PCD;
		}
	}

	/* If a resume is in progress, make sure it can finish */
	if (ehci->resuming_ports)
		FUNC3(&hcd->rh_timer, jiffies + FUNC4(25));

	FUNC6 (&ehci->lock, flags);
	return status ? retval : 0;
}