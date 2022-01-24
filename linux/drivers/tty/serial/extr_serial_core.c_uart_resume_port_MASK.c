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
struct tty_port {int /*<<< orphan*/  mutex; struct tty_struct* tty; } ;
struct uart_state {struct tty_port port; } ;
struct uart_port {int line; int /*<<< orphan*/  lock; int /*<<< orphan*/  mctrl; struct uart_ops* ops; TYPE_1__* cons; scalar_t__ suspended; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct uart_ops {int (* startup ) (struct uart_port*) ;int /*<<< orphan*/  (* start_tx ) (struct uart_port*) ;int /*<<< orphan*/  (* set_mctrl ) (struct uart_port*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_termios ) (struct uart_port*,struct ktermios*,int /*<<< orphan*/ *) ;} ;
struct uart_match {struct uart_driver* member_1; struct uart_port* member_0; } ;
struct uart_driver {struct uart_state* state; } ;
struct ktermios {scalar_t__ c_cflag; } ;
struct tty_struct {struct ktermios termios; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ cflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_PM_STATE_ON ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ console_suspend_enabled ; 
 struct device* FUNC1 (int /*<<< orphan*/ ,struct uart_match*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ktermios*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  serial_match_port ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct uart_port*,struct ktermios*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC15 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC17 (struct tty_port*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct tty_port*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC20 (struct uart_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct tty_struct*,struct uart_state*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC23 (struct tty_struct*,struct uart_state*) ; 

int FUNC24(struct uart_driver *drv, struct uart_port *uport)
{
	struct uart_state *state = drv->state + uport->line;
	struct tty_port *port = &state->port;
	struct device *tty_dev;
	struct uart_match match = {uport, drv};
	struct ktermios termios;

	FUNC7(&port->mutex);

	tty_dev = FUNC1(uport->dev, &match, serial_match_port);
	if (!uport->suspended && FUNC2(tty_dev)) {
		if (FUNC5(FUNC4((uport->irq))))
			FUNC3(uport->irq);
		FUNC9(tty_dev);
		FUNC8(&port->mutex);
		return 0;
	}
	FUNC9(tty_dev);
	uport->suspended = 0;

	/*
	 * Re-enable the console device after suspending.
	 */
	if (FUNC22(uport)) {
		/*
		 * First try to use the console cflag setting.
		 */
		FUNC6(&termios, 0, sizeof(struct ktermios));
		termios.c_cflag = uport->cons->cflag;

		/*
		 * If that's unset, use the tty termios setting.
		 */
		if (port->tty && termios.c_cflag == 0)
			termios = port->tty->termios;

		if (console_suspend_enabled)
			FUNC20(state, UART_PM_STATE_ON);
		uport->ops->set_termios(uport, &termios, NULL);
		if (console_suspend_enabled)
			FUNC0(uport->cons);
	}

	if (FUNC19(port)) {
		const struct uart_ops *ops = uport->ops;
		int ret;

		FUNC20(state, UART_PM_STATE_ON);
		FUNC10(&uport->lock);
		ops->set_mctrl(uport, 0);
		FUNC11(&uport->lock);
		if (console_suspend_enabled || !FUNC22(uport)) {
			/* Protected by port mutex for now */
			struct tty_struct *tty = port->tty;
			ret = ops->startup(uport);
			if (ret == 0) {
				if (tty)
					FUNC21(tty, state, NULL);
				FUNC10(&uport->lock);
				ops->set_mctrl(uport, uport->mctrl);
				ops->start_tx(uport);
				FUNC11(&uport->lock);
				FUNC17(port, 1);
			} else {
				/*
				 * Failed to resume - maybe hardware went away?
				 * Clear the "initialized" flag so we won't try
				 * to call the low level drivers shutdown method.
				 */
				FUNC23(tty, state);
			}
		}

		FUNC18(port, 0);
	}

	FUNC8(&port->mutex);

	return 0;
}