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
struct tty_port {int /*<<< orphan*/  mutex; } ;
struct uart_state {struct tty_port port; } ;
struct uart_port {scalar_t__ type; int flags; TYPE_1__* ops; } ;
struct tty_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* config_port ) (struct uart_port*,int) ;int /*<<< orphan*/  (* release_port ) (struct uart_port*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EBUSY ; 
 int EIO ; 
 int EPERM ; 
 int ERESTARTSYS ; 
 scalar_t__ PORT_UNKNOWN ; 
 int UART_CONFIG_IRQ ; 
 int UART_CONFIG_TYPE ; 
 int UPF_AUTO_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_port*,int) ; 
 int FUNC6 (struct tty_port*) ; 
 struct uart_port* FUNC7 (struct uart_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*,struct uart_state*) ; 
 int FUNC9 (struct tty_struct*,struct uart_state*,int) ; 

__attribute__((used)) static int FUNC10(struct tty_struct *tty,struct uart_state *state)
{
	struct tty_port *port = &state->port;
	struct uart_port *uport;
	int flags, ret;

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EPERM;

	/*
	 * Take the per-port semaphore.  This prevents count from
	 * changing, and hence any extra opens of the port while
	 * we're auto-configuring.
	 */
	if (FUNC1(&port->mutex))
		return -ERESTARTSYS;

	uport = FUNC7(state);
	if (!uport) {
		ret = -EIO;
		goto out;
	}

	ret = -EBUSY;
	if (FUNC6(port) == 1) {
		FUNC8(tty, state);

		/*
		 * If we already have a port type configured,
		 * we must release its resources.
		 */
		if (uport->type != PORT_UNKNOWN && uport->ops->release_port)
			uport->ops->release_port(uport);

		flags = UART_CONFIG_TYPE;
		if (uport->flags & UPF_AUTO_IRQ)
			flags |= UART_CONFIG_IRQ;

		/*
		 * This will claim the ports resources if
		 * a port is found.
		 */
		uport->ops->config_port(uport, flags);

		ret = FUNC9(tty, state, 1);
		if (ret == 0)
			FUNC5(port, true);
		if (ret > 0)
			ret = 0;
	}
out:
	FUNC2(&port->mutex);
	return ret;
}