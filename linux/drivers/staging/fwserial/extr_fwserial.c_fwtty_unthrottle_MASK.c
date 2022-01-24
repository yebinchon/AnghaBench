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
struct tty_struct {struct fwtty_port* driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  unthrottle; } ;
struct fwtty_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  mctrl; TYPE_1__ stats; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  OOB_RX_THROTTLE ; 
 int /*<<< orphan*/  TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC1 (struct fwtty_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct fwtty_port*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fwtty_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct tty_struct *tty)
{
	struct fwtty_port *port = tty->driver_data;

	FUNC2(port, "CRTSCTS: %d\n", FUNC0(tty) != 0);

	FUNC3(port, port->stats.unthrottle);

	FUNC4(&port->lock);
	port->mctrl &= ~OOB_RX_THROTTLE;
	if (FUNC0(tty))
		port->mctrl |= TIOCM_RTS;
	FUNC1(port);
	FUNC5(&port->lock);
}