#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tty_port {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  console; } ;
struct fwtty_port {int mctrl; int /*<<< orphan*/  lock; TYPE_1__ port; } ;

/* Variables and functions */
 int TIOCM_DTR ; 
 int TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC0 (struct fwtty_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct fwtty_port*,char*,int) ; 
 struct fwtty_port* port ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct fwtty_port* FUNC4 (struct tty_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct tty_port *tty_port, int on)
{
	struct fwtty_port *port = FUNC4(tty_port, port);

	FUNC1(port, "on/off: %d\n", on);

	FUNC2(&port->lock);
	/* Don't change carrier state if this is a console */
	if (!port->port.console) {
		if (on)
			port->mctrl |= TIOCM_DTR | TIOCM_RTS;
		else
			port->mctrl &= ~(TIOCM_DTR | TIOCM_RTS);
	}

	FUNC0(port);
	FUNC3(&port->lock);
}