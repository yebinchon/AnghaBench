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
struct TYPE_4__ {int /*<<< orphan*/  frame; int /*<<< orphan*/  parity; int /*<<< orphan*/  brk; int /*<<< orphan*/  rx; int /*<<< orphan*/  overrun; } ;
struct uart_port {unsigned int read_status_mask; unsigned int ignore_status_mask; int /*<<< orphan*/  lock; TYPE_2__ icount; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
struct TYPE_3__ {struct tty_port port; } ;

/* Variables and functions */
 char TTY_BREAK ; 
 char TTY_FRAME ; 
 char TTY_NORMAL ; 
 char TTY_OVERRUN ; 
 char TTY_PARITY ; 
 int /*<<< orphan*/  UART_CTL_REG ; 
 unsigned int UART_CTL_RSTRXFIFO_MASK ; 
 unsigned int UART_FIFO_ANYERR_MASK ; 
 unsigned int UART_FIFO_BRKDET_MASK ; 
 unsigned int UART_FIFO_FRAMEERR_MASK ; 
 unsigned int UART_FIFO_PARERR_MASK ; 
 int /*<<< orphan*/  UART_FIFO_REG ; 
 int /*<<< orphan*/  UART_IR_REG ; 
 int /*<<< orphan*/  UART_IR_RXNOTEMPTY ; 
 int /*<<< orphan*/  UART_IR_RXOVER ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_port*,unsigned int,char) ; 
 scalar_t__ FUNC7 (struct uart_port*) ; 
 scalar_t__ FUNC8 (struct uart_port*,unsigned int) ; 
 scalar_t__ FUNC9 (unsigned int) ; 

__attribute__((used)) static void FUNC10(struct uart_port *port)
{
	struct tty_port *tty_port = &port->state->port;
	unsigned int max_count;

	/* limit number of char read in interrupt, should not be
	 * higher than fifo size anyway since we're much faster than
	 * serial port */
	max_count = 32;
	do {
		unsigned int iestat, c, cstat;
		char flag;

		/* get overrun/fifo empty information from ier
		 * register */
		iestat = FUNC1(port, UART_IR_REG);

		if (FUNC9(iestat & FUNC0(UART_IR_RXOVER))) {
			unsigned int val;

			/* fifo reset is required to clear
			 * interrupt */
			val = FUNC1(port, UART_CTL_REG);
			val |= UART_CTL_RSTRXFIFO_MASK;
			FUNC2(port, val, UART_CTL_REG);

			port->icount.overrun++;
			FUNC6(tty_port, 0, TTY_OVERRUN);
		}

		if (!(iestat & FUNC0(UART_IR_RXNOTEMPTY)))
			break;

		cstat = c = FUNC1(port, UART_FIFO_REG);
		port->icount.rx++;
		flag = TTY_NORMAL;
		c &= 0xff;

		if (FUNC9((cstat & UART_FIFO_ANYERR_MASK))) {
			/* do stats first */
			if (cstat & UART_FIFO_BRKDET_MASK) {
				port->icount.brk++;
				if (FUNC7(port))
					continue;
			}

			if (cstat & UART_FIFO_PARERR_MASK)
				port->icount.parity++;
			if (cstat & UART_FIFO_FRAMEERR_MASK)
				port->icount.frame++;

			/* update flag wrt read_status_mask */
			cstat &= port->read_status_mask;
			if (cstat & UART_FIFO_BRKDET_MASK)
				flag = TTY_BREAK;
			if (cstat & UART_FIFO_FRAMEERR_MASK)
				flag = TTY_FRAME;
			if (cstat & UART_FIFO_PARERR_MASK)
				flag = TTY_PARITY;
		}

		if (FUNC8(port, c))
			continue;


		if ((cstat & port->ignore_status_mask) == 0)
			FUNC6(tty_port, c, flag);

	} while (--max_count);

	FUNC4(&port->lock);
	FUNC5(tty_port);
	FUNC3(&port->lock);
}