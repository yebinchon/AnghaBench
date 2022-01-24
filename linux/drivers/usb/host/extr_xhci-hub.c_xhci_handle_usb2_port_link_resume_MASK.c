#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct xhci_port {size_t hcd_portnum; int /*<<< orphan*/  addr; TYPE_1__* rhub; } ;
struct xhci_hcd {int /*<<< orphan*/  lock; } ;
struct xhci_bus_state {unsigned long* resume_done; int port_c_suspend; int suspended_ports; int /*<<< orphan*/  rexit_ports; int /*<<< orphan*/ * rexit_done; int /*<<< orphan*/  resuming_ports; } ;
struct TYPE_5__ {int /*<<< orphan*/  busnum; } ;
struct usb_hcd {TYPE_2__ self; int /*<<< orphan*/  rh_timer; } ;
struct TYPE_4__ {struct xhci_bus_state bus_state; struct usb_hcd* hcd; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 size_t PORT_PE ; 
 int /*<<< orphan*/  PORT_PLC ; 
 size_t PORT_RESET ; 
 size_t USB_PORT_STAT_SUSPEND ; 
 int /*<<< orphan*/  USB_RESUME_TIMEOUT ; 
 int /*<<< orphan*/  XDEV_U0 ; 
 int /*<<< orphan*/  XHCI_MAX_REXIT_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ *) ; 
 struct xhci_hcd* FUNC1 (struct usb_hcd*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,size_t) ; 
 int FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct xhci_hcd*,char*,...) ; 
 int FUNC14 (struct usb_hcd*,struct xhci_hcd*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct xhci_hcd*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct xhci_hcd*,struct xhci_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct xhci_hcd*,struct xhci_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct xhci_hcd*,char*,int /*<<< orphan*/ ,size_t,int) ; 

__attribute__((used)) static int FUNC19(struct xhci_port *port,
					     u32 *status, u32 portsc,
					     unsigned long flags)
{
	struct xhci_bus_state *bus_state;
	struct xhci_hcd	*xhci;
	struct usb_hcd *hcd;
	int slot_id;
	u32 wIndex;

	hcd = port->rhub->hcd;
	bus_state = &port->rhub->bus_state;
	xhci = FUNC1(hcd);
	wIndex = port->hcd_portnum;

	if ((portsc & PORT_RESET) || !(portsc & PORT_PE)) {
		*status = 0xffffffff;
		return -EINVAL;
	}
	/* did port event handler already start resume timing? */
	if (!bus_state->resume_done[wIndex]) {
		/* If not, maybe we are in a host initated resume? */
		if (FUNC8(wIndex, &bus_state->resuming_ports)) {
			/* Host initated resume doesn't time the resume
			 * signalling using resume_done[].
			 * It manually sets RESUME state, sleeps 20ms
			 * and sets U0 state. This should probably be
			 * changed, but not right now.
			 */
		} else {
			/* port resume was discovered now and here,
			 * start resume timing
			 */
			unsigned long timeout = jiffies +
				FUNC3(USB_RESUME_TIMEOUT);

			FUNC5(wIndex, &bus_state->resuming_ports);
			bus_state->resume_done[wIndex] = timeout;
			FUNC2(&hcd->rh_timer, timeout);
			FUNC11(&hcd->self, wIndex);
		}
	/* Has resume been signalled for USB_RESUME_TIME yet? */
	} else if (FUNC9(jiffies, bus_state->resume_done[wIndex])) {
		int time_left;

		FUNC13(xhci, "resume USB2 port %d-%d\n",
			 hcd->self.busnum, wIndex + 1);

		bus_state->resume_done[wIndex] = 0;
		FUNC0(wIndex, &bus_state->resuming_ports);

		FUNC5(wIndex, &bus_state->rexit_ports);

		FUNC17(xhci, port, PORT_PLC);
		FUNC16(xhci, port, XDEV_U0);

		FUNC7(&xhci->lock, flags);
		time_left = FUNC12(
			&bus_state->rexit_done[wIndex],
			FUNC3(XHCI_MAX_REXIT_TIMEOUT_MS));
		FUNC6(&xhci->lock, flags);

		if (time_left) {
			slot_id = FUNC14(hcd, xhci,
							    wIndex + 1);
			if (!slot_id) {
				FUNC13(xhci, "slot_id is zero\n");
				*status = 0xffffffff;
				return -ENODEV;
			}
			FUNC15(xhci, slot_id);
		} else {
			int port_status = FUNC4(port->addr);

			FUNC18(xhci, "Port resume timed out, port %d-%d: 0x%x\n",
				  hcd->self.busnum, wIndex + 1, port_status);
			*status |= USB_PORT_STAT_SUSPEND;
			FUNC0(wIndex, &bus_state->rexit_ports);
		}

		FUNC10(&hcd->self, wIndex);
		bus_state->port_c_suspend |= 1 << wIndex;
		bus_state->suspended_ports &= ~(1 << wIndex);
	} else {
		/*
		 * The resume has been signaling for less than
		 * USB_RESUME_TIME. Report the port status as SUSPEND,
		 * let the usbcore check port status again and clear
		 * resume signaling later.
		 */
		*status |= USB_PORT_STAT_SUSPEND;
	}
	return 0;
}