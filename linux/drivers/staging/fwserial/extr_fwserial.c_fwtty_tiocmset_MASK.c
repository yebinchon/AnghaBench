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
struct fwtty_port {unsigned int mctrl; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned int MCTRL_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct fwtty_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct fwtty_port*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty,
			  unsigned int set, unsigned int clear)
{
	struct fwtty_port *port = tty->driver_data;

	FUNC1(port, "set: %x clear: %x\n", set, clear);

	/* TODO: simulate loopback if TIOCM_LOOP set */

	FUNC2(&port->lock);
	port->mctrl &= ~(clear & MCTRL_MASK & 0xffff);
	port->mctrl |= set & MCTRL_MASK & 0xffff;
	FUNC0(port);
	FUNC3(&port->lock);
	return 0;
}