#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_4__ {int /*<<< orphan*/  delta_msr_wait; } ;
struct TYPE_3__ {int /*<<< orphan*/  dcd; int /*<<< orphan*/  rng; int /*<<< orphan*/  dsr; int /*<<< orphan*/  cts; } ;
struct usb_serial_port {TYPE_2__ port; TYPE_1__ icount; struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct tty_struct {int dummy; } ;
struct pl2303_serial_private {int quirks; } ;
struct pl2303_private {int line_status; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int PL2303_QUIRK_UART_STATE_IDX0 ; 
 int UART_BREAK_ERROR ; 
 int UART_CTS ; 
 int UART_DCD ; 
 int UART_DSR ; 
 int UART_RING ; 
 unsigned int UART_STATE_INDEX ; 
 int UART_STATE_MSR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 struct tty_struct* FUNC3 (TYPE_2__*) ; 
 struct pl2303_serial_private* FUNC4 (struct usb_serial*) ; 
 struct pl2303_private* FUNC5 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_serial_port*,struct tty_struct*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct usb_serial_port *port,
				      unsigned char *data,
				      unsigned int actual_length)
{
	struct usb_serial *serial = port->serial;
	struct pl2303_serial_private *spriv = FUNC4(serial);
	struct pl2303_private *priv = FUNC5(port);
	struct tty_struct *tty;
	unsigned long flags;
	unsigned int status_idx = UART_STATE_INDEX;
	u8 status;
	u8 delta;

	if (spriv->quirks & PL2303_QUIRK_UART_STATE_IDX0)
		status_idx = 0;

	if (actual_length < status_idx + 1)
		return;

	status = data[status_idx];

	/* Save off the uart status for others to look at */
	FUNC0(&priv->lock, flags);
	delta = priv->line_status ^ status;
	priv->line_status = status;
	FUNC1(&priv->lock, flags);

	if (status & UART_BREAK_ERROR)
		FUNC6(port);

	if (delta & UART_STATE_MSR_MASK) {
		if (delta & UART_CTS)
			port->icount.cts++;
		if (delta & UART_DSR)
			port->icount.dsr++;
		if (delta & UART_RING)
			port->icount.rng++;
		if (delta & UART_DCD) {
			port->icount.dcd++;
			tty = FUNC3(&port->port);
			if (tty) {
				FUNC7(port, tty,
							status & UART_DCD);
				FUNC2(tty);
			}
		}

		FUNC8(&port->port.delta_msr_wait);
	}
}