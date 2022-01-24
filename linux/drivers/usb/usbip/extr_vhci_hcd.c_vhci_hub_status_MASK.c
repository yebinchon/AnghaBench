#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vhci_hcd {int* port_status; struct vhci* vhci; } ;
struct vhci {int /*<<< orphan*/  lock; } ;
struct usb_hcd {scalar_t__ state; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_hcd*) ; 
 scalar_t__ HC_STATE_SUSPENDED ; 
 int PORT_C_MASK ; 
 int VHCI_HC_PORTS ; 
 struct vhci_hcd* FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static int FUNC8(struct usb_hcd *hcd, char *buf)
{
	struct vhci_hcd	*vhci_hcd = FUNC2(hcd);
	struct vhci *vhci = vhci_hcd->vhci;
	int		retval = FUNC0(VHCI_HC_PORTS + 1, 8);
	int		rhport;
	int		changed = 0;
	unsigned long	flags;

	FUNC3(buf, 0, retval);

	FUNC4(&vhci->lock, flags);
	if (!FUNC1(hcd)) {
		FUNC7("hw accessible flag not on?\n");
		goto done;
	}

	/* check pseudo status register for each port */
	for (rhport = 0; rhport < VHCI_HC_PORTS; rhport++) {
		if ((vhci_hcd->port_status[rhport] & PORT_C_MASK)) {
			/* The status of a port has been changed, */
			FUNC7("port %d status changed\n", rhport);

			buf[(rhport + 1) / 8] |= 1 << (rhport + 1) % 8;
			changed = 1;
		}
	}

	if ((hcd->state == HC_STATE_SUSPENDED) && (changed == 1))
		FUNC6(hcd);

done:
	FUNC5(&vhci->lock, flags);
	return changed ? retval : 0;
}