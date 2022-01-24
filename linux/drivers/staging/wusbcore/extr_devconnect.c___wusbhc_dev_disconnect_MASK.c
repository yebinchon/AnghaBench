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
struct wusbhc {scalar_t__ active; int /*<<< orphan*/  dev; } ;
struct wusb_port {int status; int change; struct wusb_dev* wusb_dev; } ;
struct wusb_dev {int /*<<< orphan*/  cack_node; int /*<<< orphan*/  port_idx; } ;

/* Variables and functions */
 int USB_PORT_STAT_CONNECTION ; 
 int USB_PORT_STAT_C_CONNECTION ; 
 int USB_PORT_STAT_C_ENABLE ; 
 int USB_PORT_STAT_ENABLE ; 
 int USB_PORT_STAT_HIGH_SPEED ; 
 int USB_PORT_STAT_LOW_SPEED ; 
 int USB_PORT_STAT_RESET ; 
 int USB_PORT_STAT_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wusb_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct wusbhc*) ; 

__attribute__((used)) static void FUNC5(struct wusbhc *wusbhc,
				    struct wusb_port *port)
{
	struct wusb_dev *wusb_dev = port->wusb_dev;

	port->status &= ~(USB_PORT_STAT_CONNECTION | USB_PORT_STAT_ENABLE
			  | USB_PORT_STAT_SUSPEND | USB_PORT_STAT_RESET
			  | USB_PORT_STAT_LOW_SPEED | USB_PORT_STAT_HIGH_SPEED);
	port->change |= USB_PORT_STAT_C_CONNECTION | USB_PORT_STAT_C_ENABLE;
	if (wusb_dev) {
		FUNC0(wusbhc->dev, "disconnecting device from port %d\n", wusb_dev->port_idx);
		if (!FUNC2(&wusb_dev->cack_node))
			FUNC1(&wusb_dev->cack_node);
		/* For the one in cack_add() */
		FUNC3(wusb_dev);
	}
	port->wusb_dev = NULL;

	/* After a device disconnects, change the GTK (see [WUSB]
	 * section 6.2.11.2). */
	if (wusbhc->active)
		FUNC4(wusbhc);

	/* The Wireless USB part has forgotten about the device already; now
	 * hub_wq's timer will pick up the disconnection and remove the USB
	 * device from the system
	 */
}