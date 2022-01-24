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
struct tty_struct {int hw_stopped; struct fwtty_port* driver_data; } ;
struct ktermios {int c_cflag; } ;
struct fwtty_port {int mctrl; int mstatus; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int CBAUD ; 
 int CRTSCTS ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int TIOCM_CTS ; 
 int TIOCM_DTR ; 
 int TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC1 (struct fwtty_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct fwtty_port*) ; 
 unsigned int FUNC3 (struct fwtty_port*,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC7(struct tty_struct *tty, struct ktermios *old)
{
	struct fwtty_port *port = tty->driver_data;
	unsigned int baud;

	FUNC4(&port->lock);
	baud = FUNC3(port, tty);

	if ((baud == 0) && (old->c_cflag & CBAUD)) {
		port->mctrl &= ~(TIOCM_DTR | TIOCM_RTS);
	} else if ((baud != 0) && !(old->c_cflag & CBAUD)) {
		if (FUNC0(tty) || !FUNC6(tty))
			port->mctrl |= TIOCM_DTR | TIOCM_RTS;
		else
			port->mctrl |= TIOCM_DTR;
	}
	FUNC1(port);
	FUNC5(&port->lock);

	if (old->c_cflag & CRTSCTS) {
		if (!FUNC0(tty)) {
			tty->hw_stopped = 0;
			FUNC2(port);
		}
	} else if (FUNC0(tty) && ~port->mstatus & TIOCM_CTS) {
		tty->hw_stopped = 1;
	}
}