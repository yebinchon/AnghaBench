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
typedef  int u8 ;
struct usb_serial_port {int /*<<< orphan*/  port_number; struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct mxuport_port {int mcr_state; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int EINVAL ; 
#define  MX_RTS_DISABLE 130 
#define  MX_RTS_ENABLE 129 
#define  MX_RTS_HW 128 
 int /*<<< orphan*/  RQ_VENDOR_SET_RTS ; 
 int UART_MCR_RTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct usb_serial*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct mxuport_port* FUNC3 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC4(struct usb_serial_port *port, u8 state)
{
	struct mxuport_port *mxport = FUNC3(port);
	struct usb_serial *serial = port->serial;
	int err;
	u8 mcr_state;

	FUNC0(&mxport->mutex);
	mcr_state = mxport->mcr_state;

	switch (state) {
	case MX_RTS_DISABLE:
		mcr_state &= ~UART_MCR_RTS;
		break;
	case MX_RTS_ENABLE:
		mcr_state |= UART_MCR_RTS;
		break;
	case MX_RTS_HW:
		/*
		 * Do not update mxport->mcr_state when doing hardware
		 * flow control.
		 */
		break;
	default:
		/*
		 * Should not happen, but somebody might try passing
		 * MX_RTS_NO_CHANGE, which is not valid.
		 */
		err = -EINVAL;
		goto out;
	}
	err = FUNC2(serial, RQ_VENDOR_SET_RTS,
				    state, port->port_number);
	if (!err)
		mxport->mcr_state = mcr_state;

out:
	FUNC1(&mxport->mutex);

	return err;
}