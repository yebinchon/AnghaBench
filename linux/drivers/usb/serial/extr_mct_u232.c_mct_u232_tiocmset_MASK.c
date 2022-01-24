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
struct mct_u232_private {unsigned int control_state; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_RTS ; 
 int FUNC0 (struct usb_serial_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mct_u232_private* FUNC3 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty,
			      unsigned int set, unsigned int clear)
{
	struct usb_serial_port *port = tty->driver_data;
	struct mct_u232_private *priv = FUNC3(port);
	unsigned int control_state;
	unsigned long flags;

	FUNC1(&priv->lock, flags);
	control_state = priv->control_state;

	if (set & TIOCM_RTS)
		control_state |= TIOCM_RTS;
	if (set & TIOCM_DTR)
		control_state |= TIOCM_DTR;
	if (clear & TIOCM_RTS)
		control_state &= ~TIOCM_RTS;
	if (clear & TIOCM_DTR)
		control_state &= ~TIOCM_DTR;

	priv->control_state = control_state;
	FUNC2(&priv->lock, flags);
	return FUNC0(port, control_state);
}