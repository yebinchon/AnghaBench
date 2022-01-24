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
struct tty_struct {int /*<<< orphan*/  name; struct serial_state* driver_data; } ;
struct tty_port {int /*<<< orphan*/ * tty; } ;
struct serial_state {int /*<<< orphan*/  timeout; int /*<<< orphan*/  read_status_mask; struct tty_port tport; } ;
struct file {int dummy; } ;
struct TYPE_2__ {void* intreq; void* intena; } ;

/* Variables and functions */
 void* IF_RBF ; 
 int /*<<< orphan*/  UART_LSR_DR ; 
 TYPE_1__ custom ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct serial_state*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*,struct serial_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_port*,struct tty_struct*) ; 
 scalar_t__ FUNC7 (struct tty_port*,struct tty_struct*,struct file*) ; 
 scalar_t__ FUNC8 (struct tty_port*) ; 

__attribute__((used)) static void FUNC9(struct tty_struct *tty, struct file * filp)
{
	struct serial_state *state = tty->driver_data;
	struct tty_port *port = &state->tport;

	if (FUNC3(state, tty->name, "rs_close"))
		return;

	if (FUNC7(port, tty, filp) == 0)
		return;

	/*
	 * At this point we stop accepting input.  To do this, we
	 * disable the receive line status interrupts, and tell the
	 * interrupt driver to stop checking the data ready bit in the
	 * line status register.
	 */
	state->read_status_mask &= ~UART_LSR_DR;
	if (FUNC8(port)) {
	        /* disable receive interrupts */
	        custom.intena = IF_RBF;
		FUNC0();
		/* clear any pending receive interrupt */
		custom.intreq = IF_RBF;
		FUNC0();

		/*
		 * Before we drop DTR, make sure the UART transmitter
		 * has completely drained; this is especially
		 * important if there is a transmit FIFO!
		 */
		FUNC2(tty, state->timeout);
	}
	FUNC4(tty, state);
	FUNC1(tty);
		
	FUNC5(tty);
	port->tty = NULL;

	FUNC6(port, tty);
}