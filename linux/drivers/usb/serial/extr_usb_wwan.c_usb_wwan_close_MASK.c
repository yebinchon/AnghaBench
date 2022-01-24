#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_wwan_port_private {int /*<<< orphan*/ * out_urbs; int /*<<< orphan*/ * in_urbs; int /*<<< orphan*/  delayed; } ;
struct usb_wwan_intf_private {scalar_t__ open_ports; int /*<<< orphan*/  susp_lock; } ;
struct usb_serial_port {int /*<<< orphan*/  interrupt_in_urb; struct usb_serial* serial; } ;
struct usb_serial {TYPE_1__* interface; } ;
struct urb {int dummy; } ;
struct TYPE_3__ {scalar_t__ needs_remote_wakeup; } ;

/* Variables and functions */
 int N_IN_URB ; 
 int N_OUT_URB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*,struct usb_wwan_port_private*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 struct urb* FUNC5 (int /*<<< orphan*/ *) ; 
 struct usb_wwan_intf_private* FUNC6 (struct usb_serial*) ; 
 struct usb_wwan_port_private* FUNC7 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct usb_serial_port *port)
{
	int i;
	struct usb_serial *serial = port->serial;
	struct usb_wwan_port_private *portdata;
	struct usb_wwan_intf_private *intfdata = FUNC6(serial);
	struct urb *urb;

	portdata = FUNC7(port);

	/*
	 * Need to take susp_lock to make sure port is not already being
	 * resumed, but no need to hold it due to initialized
	 */
	FUNC0(&intfdata->susp_lock);
	if (--intfdata->open_ports == 0)
		serial->interface->needs_remote_wakeup = 0;
	FUNC1(&intfdata->susp_lock);

	for (;;) {
		urb = FUNC5(&portdata->delayed);
		if (!urb)
			break;
		FUNC2(urb, portdata);
		FUNC4(serial->interface);
	}

	for (i = 0; i < N_IN_URB; i++)
		FUNC8(portdata->in_urbs[i]);
	for (i = 0; i < N_OUT_URB; i++)
		FUNC8(portdata->out_urbs[i]);
	FUNC8(port->interrupt_in_urb);

	FUNC3(serial->interface);
}