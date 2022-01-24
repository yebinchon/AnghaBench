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
struct tty_port {int /*<<< orphan*/  mutex; int /*<<< orphan*/  delta_msr_wait; int /*<<< orphan*/  open_wait; int /*<<< orphan*/  lock; scalar_t__ count; } ;
struct uart_state {struct tty_port port; } ;
struct uart_port {int dummy; } ;
struct tty_struct {int /*<<< orphan*/  index; struct uart_state* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_PM_STATE_OFF ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_port*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC11 (struct tty_struct*) ; 
 struct uart_port* FUNC12 (struct uart_state*) ; 
 int /*<<< orphan*/  FUNC13 (struct tty_struct*,struct uart_state*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct tty_struct *tty)
{
	struct uart_state *state = tty->driver_data;
	struct tty_port *port = &state->port;
	struct uart_port *uport;
	unsigned long flags;

	FUNC3("uart_hangup(%d)\n", tty->index);

	FUNC1(&port->mutex);
	uport = FUNC12(state);
	FUNC0(!uport, "hangup of detached port!\n");

	if (FUNC6(port)) {
		FUNC11(tty);
		FUNC13(tty, state);
		FUNC4(&port->lock, flags);
		port->count = 0;
		FUNC5(&port->lock, flags);
		FUNC7(port, 0);
		FUNC8(port, NULL);
		if (uport && !FUNC10(uport))
			FUNC9(state, UART_PM_STATE_OFF);
		FUNC14(&port->open_wait);
		FUNC14(&port->delta_msr_wait);
	}
	FUNC2(&port->mutex);
}