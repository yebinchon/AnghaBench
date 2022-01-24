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
struct tty_port {int /*<<< orphan*/  mutex; int /*<<< orphan*/  tty; } ;
struct uart_state {int /*<<< orphan*/ * uart_port; int /*<<< orphan*/  refcount; int /*<<< orphan*/  remove_wait; struct tty_port port; } ;
struct uart_port {scalar_t__ type; int /*<<< orphan*/  name; int /*<<< orphan*/  tty_groups; TYPE_1__* ops; int /*<<< orphan*/  cons; int /*<<< orphan*/  line; int /*<<< orphan*/  flags; int /*<<< orphan*/  dev; } ;
struct uart_driver {int /*<<< orphan*/  tty_driver; struct uart_state* state; } ;
struct tty_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* release_port ) (struct uart_port*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ PORT_UNKNOWN ; 
 int /*<<< orphan*/  UPF_DEAD ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct uart_port*,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  port_mutex ; 
 int /*<<< orphan*/  FUNC9 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC10 (struct tty_struct*) ; 
 struct tty_struct* FUNC11 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC12 (struct tty_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct uart_port*) ; 
 struct uart_port* FUNC15 (struct uart_state*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 

int FUNC18(struct uart_driver *drv, struct uart_port *uport)
{
	struct uart_state *state = drv->state + uport->line;
	struct tty_port *port = &state->port;
	struct uart_port *uart_port;
	struct tty_struct *tty;
	int ret = 0;

	FUNC0(FUNC5());

	FUNC7(&port_mutex);

	/*
	 * Mark the port "dead" - this prevents any opens from
	 * succeeding while we shut down the port.
	 */
	FUNC7(&port->mutex);
	uart_port = FUNC15(state);
	if (uart_port != uport)
		FUNC4(uport->dev, "Removing wrong port: %p != %p\n",
			  uart_port, uport);

	if (!uart_port) {
		FUNC8(&port->mutex);
		ret = -EINVAL;
		goto out;
	}
	uport->flags |= UPF_DEAD;
	FUNC8(&port->mutex);

	/*
	 * Remove the devices from the tty layer
	 */
	FUNC12(port, drv->tty_driver, uport->line);

	tty = FUNC11(port);
	if (tty) {
		FUNC13(port->tty);
		FUNC10(tty);
	}

	/*
	 * If the port is used as a console, unregister it
	 */
	if (FUNC14(uport))
		FUNC16(uport->cons);

	/*
	 * Free the port IO and memory resources, if any.
	 */
	if (uport->type != PORT_UNKNOWN && uport->ops->release_port)
		uport->ops->release_port(uport);
	FUNC6(uport->tty_groups);
	FUNC6(uport->name);

	/*
	 * Indicate that there isn't a port here anymore.
	 */
	uport->type = PORT_UNKNOWN;

	FUNC7(&port->mutex);
	FUNC1(FUNC2(&state->refcount) < 0);
	FUNC17(state->remove_wait, !FUNC3(&state->refcount));
	state->uart_port = NULL;
	FUNC8(&port->mutex);
out:
	FUNC8(&port_mutex);

	return ret;
}