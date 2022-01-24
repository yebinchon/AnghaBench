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
struct tty_struct {struct fwtty_port* driver_data; } ;
struct fwtty_port {unsigned int mctrl; unsigned int mstatus; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned int MCTRL_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct fwtty_port*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty)
{
	struct fwtty_port *port = tty->driver_data;
	unsigned int tiocm;

	FUNC1(&port->lock);
	tiocm = (port->mctrl & MCTRL_MASK) | (port->mstatus & ~MCTRL_MASK);
	FUNC2(&port->lock);

	FUNC0(port, "%x\n", tiocm);

	return tiocm;
}