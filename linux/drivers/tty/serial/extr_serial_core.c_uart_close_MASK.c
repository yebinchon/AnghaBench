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
struct tty_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  count; } ;
struct uart_state {struct tty_port port; } ;
struct uart_driver {struct uart_state* state; } ;
struct tty_struct {int index; int /*<<< orphan*/  port; TYPE_1__* driver; struct uart_state* driver_data; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct uart_driver* driver_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct tty_struct*,struct file*) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty, struct file *filp)
{
	struct uart_state *state = tty->driver_data;

	if (!state) {
		struct uart_driver *drv = tty->driver->driver_state;
		struct tty_port *port;

		state = drv->state + tty->index;
		port = &state->port;
		FUNC1(&port->lock);
		--port->count;
		FUNC2(&port->lock);
		return;
	}

	FUNC0("uart_close(%d) called\n", tty->index);

	FUNC3(tty->port, tty, filp);
}