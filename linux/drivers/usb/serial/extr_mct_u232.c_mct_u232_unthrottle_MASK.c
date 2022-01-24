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
struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct mct_u232_private {int rx_flags; unsigned int control_state; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int THROTTLED ; 
 unsigned int TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC1 (struct usb_serial_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct mct_u232_private* FUNC4 (struct usb_serial_port*) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty)
{
	struct usb_serial_port *port = tty->driver_data;
	struct mct_u232_private *priv = FUNC4(port);
	unsigned int control_state;

	FUNC2(&priv->lock);
	if ((priv->rx_flags & THROTTLED) && FUNC0(tty)) {
		priv->rx_flags &= ~THROTTLED;
		priv->control_state |= TIOCM_RTS;
		control_state = priv->control_state;
		FUNC3(&priv->lock);
		FUNC1(port, control_state);
	} else {
		FUNC3(&priv->lock);
	}
}