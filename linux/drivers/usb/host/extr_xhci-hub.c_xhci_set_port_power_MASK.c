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
typedef  size_t u16 ;
struct xhci_port {int /*<<< orphan*/  addr; } ;
struct xhci_hub {struct xhci_port** ports; } ;
struct xhci_hcd {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  root_hub; int /*<<< orphan*/  busnum; } ;
struct usb_hcd {TYPE_1__ self; } ;

/* Variables and functions */
 int PORT_POWER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xhci_hcd*,char*,int /*<<< orphan*/ ,size_t,char*,int) ; 
 struct xhci_hub* FUNC7 (struct usb_hcd*) ; 
 int FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct xhci_hcd *xhci, struct usb_hcd *hcd,
				u16 index, bool on, unsigned long *flags)
{
	struct xhci_hub *rhub;
	struct xhci_port *port;
	u32 temp;

	rhub = FUNC7(hcd);
	port = rhub->ports[index];
	temp = FUNC0(port->addr);

	FUNC6(xhci, "set port power %d-%d %s, portsc: 0x%x\n",
		 hcd->self.busnum, index + 1, on ? "ON" : "OFF", temp);

	temp = FUNC8(temp);

	if (on) {
		/* Power on */
		FUNC5(temp | PORT_POWER, port->addr);
		FUNC0(port->addr);
	} else {
		/* Power off */
		FUNC5(temp & ~PORT_POWER, port->addr);
	}

	FUNC2(&xhci->lock, *flags);
	temp = FUNC3(hcd->self.root_hub,
					index);
	if (temp)
		FUNC4(hcd->self.root_hub,
			index, on);
	FUNC1(&xhci->lock, *flags);
}