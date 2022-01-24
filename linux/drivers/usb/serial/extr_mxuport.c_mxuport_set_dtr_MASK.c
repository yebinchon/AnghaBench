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
struct usb_serial_port {int /*<<< orphan*/  port_number; struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct mxuport_port {int /*<<< orphan*/  mutex; int /*<<< orphan*/  mcr_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  RQ_VENDOR_SET_DTR ; 
 int /*<<< orphan*/  UART_MCR_DTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct usb_serial*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct mxuport_port* FUNC3 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC4(struct usb_serial_port *port, int on)
{
	struct mxuport_port *mxport = FUNC3(port);
	struct usb_serial *serial = port->serial;
	int err;

	FUNC0(&mxport->mutex);

	err = FUNC2(serial, RQ_VENDOR_SET_DTR,
				    !!on, port->port_number);
	if (!err) {
		if (on)
			mxport->mcr_state |= UART_MCR_DTR;
		else
			mxport->mcr_state &= ~UART_MCR_DTR;
	}

	FUNC1(&mxport->mutex);

	return err;
}