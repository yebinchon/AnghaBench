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
struct usb_serial_port {int /*<<< orphan*/  dev; struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct belkin_sa_private {unsigned long control_state; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BELKIN_SA_SET_DTR_REQUEST ; 
 int /*<<< orphan*/  BELKIN_SA_SET_RTS_REQUEST ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct belkin_sa_private* FUNC4 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC5(struct tty_struct *tty,
			       unsigned int set, unsigned int clear)
{
	struct usb_serial_port *port = tty->driver_data;
	struct usb_serial *serial = port->serial;
	struct belkin_sa_private *priv = FUNC4(port);
	unsigned long control_state;
	unsigned long flags;
	int retval;
	int rts = 0;
	int dtr = 0;

	FUNC2(&priv->lock, flags);
	control_state = priv->control_state;

	if (set & TIOCM_RTS) {
		control_state |= TIOCM_RTS;
		rts = 1;
	}
	if (set & TIOCM_DTR) {
		control_state |= TIOCM_DTR;
		dtr = 1;
	}
	if (clear & TIOCM_RTS) {
		control_state &= ~TIOCM_RTS;
		rts = 0;
	}
	if (clear & TIOCM_DTR) {
		control_state &= ~TIOCM_DTR;
		dtr = 0;
	}

	priv->control_state = control_state;
	FUNC3(&priv->lock, flags);

	retval = FUNC0(BELKIN_SA_SET_RTS_REQUEST, rts);
	if (retval < 0) {
		FUNC1(&port->dev, "Set RTS error %d\n", retval);
		goto exit;
	}

	retval = FUNC0(BELKIN_SA_SET_DTR_REQUEST, dtr);
	if (retval < 0) {
		FUNC1(&port->dev, "Set DTR error %d\n", retval);
		goto exit;
	}
exit:
	return retval;
}