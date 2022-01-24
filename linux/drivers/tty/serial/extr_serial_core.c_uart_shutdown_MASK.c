#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* buf; } ;
struct tty_port {int dummy; } ;
struct uart_state {TYPE_3__ xmit; struct tty_port port; } ;
struct uart_port {TYPE_1__* cons; } ;
struct TYPE_5__ {int /*<<< orphan*/  c_cflag; } ;
struct tty_struct {TYPE_2__ termios; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  cflag; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  TTY_IO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_port*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct uart_port*) ; 
 struct uart_port* FUNC7 (struct uart_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_state*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC11 (struct uart_port*,unsigned long) ; 

__attribute__((used)) static void FUNC12(struct tty_struct *tty, struct uart_state *state)
{
	struct uart_port *uport = FUNC7(state);
	struct tty_port *port = &state->port;
	unsigned long flags = 0;
	char *xmit_buf = NULL;

	/*
	 * Set the TTY IO error marker
	 */
	if (tty)
		FUNC2(TTY_IO_ERROR, &tty->flags);

	if (FUNC3(port)) {
		FUNC4(port, 0);

		/*
		 * Turn off DTR and RTS early.
		 */
		if (uport && FUNC6(uport) && tty)
			uport->cons->cflag = tty->termios.c_cflag;

		if (!tty || FUNC0(tty))
			FUNC8(uport, 0);

		FUNC10(port);
	}

	/*
	 * It's possible for shutdown to be called after suspend if we get
	 * a DCD drop (hangup) at just the right time.  Clear suspended bit so
	 * we don't try to resume a port that has been shutdown.
	 */
	FUNC5(port, 0);

	/*
	 * Do not free() the transmit buffer page under the port lock since
	 * this can create various circular locking scenarios. For instance,
	 * console driver may need to allocate/free a debug object, which
	 * can endup in printk() recursion.
	 */
	FUNC9(state, flags);
	xmit_buf = state->xmit.buf;
	state->xmit.buf = NULL;
	FUNC11(uport, flags);

	if (xmit_buf)
		FUNC1((unsigned long)xmit_buf);
}