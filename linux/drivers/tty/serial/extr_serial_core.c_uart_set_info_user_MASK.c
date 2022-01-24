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
struct tty_port {int /*<<< orphan*/  mutex; } ;
struct uart_state {struct tty_port port; } ;
struct tty_struct {int /*<<< orphan*/  termios_rwsem; struct uart_state* driver_data; } ;
struct serial_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct tty_struct*,struct tty_port*,struct uart_state*,struct serial_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct tty_struct *tty, struct serial_struct *ss)
{
	struct uart_state *state = tty->driver_data;
	struct tty_port *port = &state->port;
	int retval;

	FUNC0(&tty->termios_rwsem);
	/*
	 * This semaphore protects port->count.  It is also
	 * very useful to prevent opens.  Also, take the
	 * port configuration semaphore to make sure that a
	 * module insertion/removal doesn't change anything
	 * under us.
	 */
	FUNC1(&port->mutex);
	retval = FUNC3(tty, port, state, ss);
	FUNC2(&port->mutex);
	FUNC4(&tty->termios_rwsem);
	return retval;
}