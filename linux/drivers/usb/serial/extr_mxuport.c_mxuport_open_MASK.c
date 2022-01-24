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
struct tty_struct {int dummy; } ;
struct mxuport_port {scalar_t__ msr_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  RQ_VENDOR_SET_OPEN ; 
 int /*<<< orphan*/  RQ_VENDOR_SET_RX_HOST_EN ; 
 int FUNC0 (struct usb_serial*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,struct usb_serial_port*,int /*<<< orphan*/ *) ; 
 struct mxuport_port* FUNC2 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty, struct usb_serial_port *port)
{
	struct mxuport_port *mxport = FUNC2(port);
	struct usb_serial *serial = port->serial;
	int err;

	/* Set receive host (enable) */
	err = FUNC0(serial, RQ_VENDOR_SET_RX_HOST_EN,
				    1, port->port_number);
	if (err)
		return err;

	err = FUNC0(serial, RQ_VENDOR_SET_OPEN,
				    1, port->port_number);
	if (err) {
		FUNC0(serial, RQ_VENDOR_SET_RX_HOST_EN,
				      0, port->port_number);
		return err;
	}

	/* Initial port termios */
	if (tty)
		FUNC1(tty, port, NULL);

	/*
	 * TODO: use RQ_VENDOR_GET_MSR, once we know what it
	 * returns.
	 */
	mxport->msr_state = 0;

	return err;
}