#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  rx; int /*<<< orphan*/  frame; int /*<<< orphan*/  brk; int /*<<< orphan*/  overrun; } ;
struct uart_port {unsigned int read_status_mask; int /*<<< orphan*/  lock; TYPE_2__ icount; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
struct TYPE_3__ {struct tty_port port; } ;

/* Variables and functions */
 char TTY_BREAK ; 
 char TTY_FRAME ; 
 char TTY_NORMAL ; 
 char TTY_OVERRUN ; 
 int /*<<< orphan*/  UART_CR ; 
 int /*<<< orphan*/  UART_CR_CMD_RESET_ERR ; 
 int /*<<< orphan*/  UART_RF ; 
 int /*<<< orphan*/  UART_SR ; 
 int UART_SR_OVERRUN ; 
 unsigned int UART_SR_PAR_FRAME_ERR ; 
 unsigned int UART_SR_RX_BREAK ; 
 unsigned int UART_SR_RX_READY ; 
 int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_port*,unsigned int,char) ; 
 scalar_t__ FUNC6 (struct uart_port*) ; 
 int FUNC7 (struct uart_port*,unsigned int) ; 

__attribute__((used)) static void FUNC8(struct uart_port *port)
{
	struct tty_port *tport = &port->state->port;
	unsigned int sr;

	/*
	 * Handle overrun. My understanding of the hardware is that overrun
	 * is not tied to the RX buffer, so we handle the case out of band.
	 */
	if ((FUNC0(port, UART_SR) & UART_SR_OVERRUN)) {
		port->icount.overrun++;
		FUNC5(tport, 0, TTY_OVERRUN);
		FUNC1(port, UART_CR_CMD_RESET_ERR, UART_CR);
	}

	/* and now the main RX loop */
	while ((sr = FUNC0(port, UART_SR)) & UART_SR_RX_READY) {
		unsigned int c;
		char flag = TTY_NORMAL;
		int sysrq;

		c = FUNC0(port, UART_RF);

		if (sr & UART_SR_RX_BREAK) {
			port->icount.brk++;
			if (FUNC6(port))
				continue;
		} else if (sr & UART_SR_PAR_FRAME_ERR) {
			port->icount.frame++;
		} else {
			port->icount.rx++;
		}

		/* Mask conditions we're ignorning. */
		sr &= port->read_status_mask;

		if (sr & UART_SR_RX_BREAK)
			flag = TTY_BREAK;
		else if (sr & UART_SR_PAR_FRAME_ERR)
			flag = TTY_FRAME;

		FUNC3(&port->lock);
		sysrq = FUNC7(port, c);
		FUNC2(&port->lock);
		if (!sysrq)
			FUNC5(tport, c, flag);
	}

	FUNC3(&port->lock);
	FUNC4(tport);
	FUNC2(&port->lock);
}