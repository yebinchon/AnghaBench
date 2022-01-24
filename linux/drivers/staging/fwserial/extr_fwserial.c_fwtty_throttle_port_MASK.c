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
struct tty_struct {int dummy; } ;
struct fwtty_port {unsigned int mctrl; int /*<<< orphan*/  lock; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 unsigned int OOB_RX_THROTTLE ; 
 unsigned int TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC1 (struct fwtty_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 struct tty_struct* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct fwtty_port *port)
{
	struct tty_struct *tty;
	unsigned int old;

	tty = FUNC5(&port->port);
	if (!tty)
		return;

	FUNC2(&port->lock);

	old = port->mctrl;
	port->mctrl |= OOB_RX_THROTTLE;
	if (FUNC0(tty))
		port->mctrl &= ~TIOCM_RTS;
	if (~old & OOB_RX_THROTTLE)
		FUNC1(port);

	FUNC3(&port->lock);

	FUNC4(tty);
}