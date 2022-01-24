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
struct uart_port {int line; int suspended; int /*<<< orphan*/  cons; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; struct uart_ops* ops; int /*<<< orphan*/  irq; } ;
struct uart_ops {int /*<<< orphan*/  (* shutdown ) (struct uart_port*) ;int /*<<< orphan*/  (* tx_empty ) (struct uart_port*) ;int /*<<< orphan*/  (* stop_rx ) (struct uart_port*) ;int /*<<< orphan*/  (* set_mctrl ) (struct uart_port*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* stop_tx ) (struct uart_port*) ;} ;
struct uart_match {struct uart_driver* member_1; struct uart_port* member_0; } ;
struct uart_driver {struct uart_state* state; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_PM_STATE_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  console_suspend_enabled ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct device* FUNC2 (int /*<<< orphan*/ ,struct uart_match*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  serial_match_port ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC12 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC14 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC15 (struct uart_port*) ; 
 scalar_t__ FUNC16 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC17 (struct tty_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct tty_port*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct uart_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (struct uart_port*) ; 

int FUNC21(struct uart_driver *drv, struct uart_port *uport)
{
	struct uart_state *state = drv->state + uport->line;
	struct tty_port *port = &state->port;
	struct device *tty_dev;
	struct uart_match match = {uport, drv};

	FUNC6(&port->mutex);

	tty_dev = FUNC2(uport->dev, &match, serial_match_port);
	if (tty_dev && FUNC3(tty_dev)) {
		FUNC4(uport->irq);
		FUNC8(tty_dev);
		FUNC7(&port->mutex);
		return 0;
	}
	FUNC8(tty_dev);

	/* Nothing to do if the console is not suspending */
	if (!console_suspend_enabled && FUNC20(uport))
		goto unlock;

	uport->suspended = 1;

	if (FUNC16(port)) {
		const struct uart_ops *ops = uport->ops;
		int tries;

		FUNC18(port, 1);
		FUNC17(port, 0);

		FUNC9(&uport->lock);
		ops->stop_tx(uport);
		ops->set_mctrl(uport, 0);
		ops->stop_rx(uport);
		FUNC10(&uport->lock);

		/*
		 * Wait for the transmitter to empty.
		 */
		for (tries = 3; !ops->tx_empty(uport) && tries; tries--)
			FUNC5(10);
		if (!tries)
			FUNC1(uport->dev, "%s: Unable to drain transmitter\n",
				uport->name);

		ops->shutdown(uport);
	}

	/*
	 * Disable the console device before suspending.
	 */
	if (FUNC20(uport))
		FUNC0(uport->cons);

	FUNC19(state, UART_PM_STATE_OFF);
unlock:
	FUNC7(&port->mutex);

	return 0;
}