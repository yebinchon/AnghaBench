#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned char* buf; } ;
struct uart_state {TYPE_4__ xmit; } ;
struct uart_port {scalar_t__ type; TYPE_3__* cons; TYPE_1__* ops; } ;
struct TYPE_6__ {scalar_t__ c_cflag; } ;
struct tty_struct {TYPE_2__ termios; } ;
struct TYPE_7__ {scalar_t__ cflag; } ;
struct TYPE_5__ {int (* startup ) (struct uart_port*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PORT_UNKNOWN ; 
 int /*<<< orphan*/  UART_PM_STATE_ON ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*,struct uart_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 scalar_t__ FUNC8 (struct uart_port*) ; 
 struct uart_port* FUNC9 (struct uart_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct uart_state*,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct uart_port*,unsigned long) ; 

__attribute__((used)) static int FUNC13(struct tty_struct *tty, struct uart_state *state,
		int init_hw)
{
	struct uart_port *uport = FUNC9(state);
	unsigned long page;
	unsigned long flags = 0;
	int retval = 0;

	if (uport->type == PORT_UNKNOWN)
		return 1;

	/*
	 * Make sure the device is in D0 state.
	 */
	FUNC5(state, UART_PM_STATE_ON);

	/*
	 * Initialise and allocate the transmit and temporary
	 * buffer.
	 */
	page = FUNC3(GFP_KERNEL);
	if (!page)
		return -ENOMEM;

	FUNC11(state, flags);
	if (!state->xmit.buf) {
		state->xmit.buf = (unsigned char *) page;
		FUNC7(&state->xmit);
		FUNC12(uport, flags);
	} else {
		FUNC12(uport, flags);
		/*
		 * Do not free() the page under the port lock, see
		 * uart_shutdown().
		 */
		FUNC2(page);
	}

	retval = uport->ops->startup(uport);
	if (retval == 0) {
		if (FUNC8(uport) && uport->cons->cflag) {
			tty->termios.c_cflag = uport->cons->cflag;
			uport->cons->cflag = 0;
		}
		/*
		 * Initialise the hardware port settings.
		 */
		FUNC6(tty, state, NULL);

		/*
		 * Setup the RTS and DTR signals once the
		 * port is open and ready to respond.
		 */
		if (init_hw && FUNC0(tty))
			FUNC10(uport, 1);
	}

	/*
	 * This is to allow setserial on this port. People may want to set
	 * port/irq/type and then reconfigure the port properly if it failed
	 * now.
	 */
	if (retval && FUNC1(CAP_SYS_ADMIN))
		return 1;

	return retval;
}