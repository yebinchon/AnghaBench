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
struct tty_struct {int /*<<< orphan*/  flags; } ;
struct tty_port {int /*<<< orphan*/  delta_msr_wait; int /*<<< orphan*/  open_wait; int /*<<< orphan*/  lock; struct tty_struct* tty; scalar_t__ count; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_IO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_port*,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct tty_port *port)
{
	struct tty_struct *tty;
	unsigned long flags;

	FUNC1(&port->lock, flags);
	port->count = 0;
	tty = port->tty;
	if (tty)
		FUNC0(TTY_IO_ERROR, &tty->flags);
	port->tty = NULL;
	FUNC2(&port->lock, flags);
	FUNC4(port, 0);
	FUNC5(port, tty);
	FUNC3(tty);
	FUNC6(&port->open_wait);
	FUNC6(&port->delta_msr_wait);
}