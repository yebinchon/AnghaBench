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
struct usb_serial_port {struct usb_serial* serial; } ;
struct usb_serial {TYPE_1__* interface; } ;
struct urb {int /*<<< orphan*/  transfer_buffer; } ;
struct sierra_port_private {int num_in_urbs; int /*<<< orphan*/ ** in_urbs; int /*<<< orphan*/  active; int /*<<< orphan*/  lock; int /*<<< orphan*/  outstanding_urbs; int /*<<< orphan*/  delayed; } ;
struct sierra_intf_private {scalar_t__ open_ports; int /*<<< orphan*/  susp_lock; } ;
struct TYPE_3__ {scalar_t__ needs_remote_wakeup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 
 struct urb* FUNC8 (int /*<<< orphan*/ *) ; 
 struct sierra_intf_private* FUNC9 (struct usb_serial*) ; 
 struct sierra_port_private* FUNC10 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct usb_serial_port *port)
{
	int i;
	struct usb_serial *serial = port->serial;
	struct sierra_port_private *portdata;
	struct sierra_intf_private *intfdata = FUNC9(serial);
	struct urb *urb;

	portdata = FUNC10(port);

	/*
	 * Need to take susp_lock to make sure port is not already being
	 * resumed, but no need to hold it due to initialized
	 */
	FUNC3(&intfdata->susp_lock);
	if (--intfdata->open_ports == 0)
		serial->interface->needs_remote_wakeup = 0;
	FUNC4(&intfdata->susp_lock);

	for (;;) {
		urb = FUNC8(&portdata->delayed);
		if (!urb)
			break;
		FUNC0(urb->transfer_buffer);
		FUNC7(urb);
		FUNC6(serial->interface);
		FUNC3(&portdata->lock);
		portdata->outstanding_urbs--;
		FUNC4(&portdata->lock);
	}

	FUNC2(port);
	FUNC11(&portdata->active);

	for (i = 0; i < portdata->num_in_urbs; i++) {
		FUNC1(portdata->in_urbs[i]);
		portdata->in_urbs[i] = NULL;
	}

	FUNC5(serial->interface);
}