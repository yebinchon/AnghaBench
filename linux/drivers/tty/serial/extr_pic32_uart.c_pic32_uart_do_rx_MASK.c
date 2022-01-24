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
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  frame; int /*<<< orphan*/  parity; int /*<<< orphan*/  rx; int /*<<< orphan*/  overrun; } ;
struct uart_port {int read_status_mask; int ignore_status_mask; int /*<<< orphan*/  lock; TYPE_2__ icount; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
struct pic32_sport {int dummy; } ;
struct TYPE_3__ {struct tty_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PIC32_UART_RX ; 
 unsigned int PIC32_UART_RX_FIFO_DEPTH ; 
 int /*<<< orphan*/  PIC32_UART_STA ; 
 int PIC32_UART_STA_FERR ; 
 int PIC32_UART_STA_OERR ; 
 int PIC32_UART_STA_PERR ; 
 int PIC32_UART_STA_URXDA ; 
 char TTY_FRAME ; 
 char TTY_NORMAL ; 
 char TTY_OVERRUN ; 
 char TTY_PARITY ; 
 int FUNC1 (struct pic32_sport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pic32_sport*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct pic32_sport* FUNC5 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_port*,int,char) ; 
 scalar_t__ FUNC8 (struct uart_port*,int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct uart_port *port)
{
	struct pic32_sport *sport = FUNC5(port);
	struct tty_port *tty;
	unsigned int max_count;

	/* limit number of char read in interrupt, should not be
	 * higher than fifo size anyway since we're much faster than
	 * serial port
	 */
	max_count = PIC32_UART_RX_FIFO_DEPTH;

	FUNC3(&port->lock);

	tty = &port->state->port;

	do {
		u32 sta_reg, c;
		char flag;

		/* get overrun/fifo empty information from status register */
		sta_reg = FUNC1(sport, PIC32_UART_STA);
		if (FUNC9(sta_reg & PIC32_UART_STA_OERR)) {

			/* fifo reset is required to clear interrupt */
			FUNC2(sport, FUNC0(PIC32_UART_STA),
						PIC32_UART_STA_OERR);

			port->icount.overrun++;
			FUNC7(tty, 0, TTY_OVERRUN);
		}

		/* Can at least one more character can be read? */
		if (!(sta_reg & PIC32_UART_STA_URXDA))
			break;

		/* read the character and increment the rx counter */
		c = FUNC1(sport, PIC32_UART_RX);

		port->icount.rx++;
		flag = TTY_NORMAL;
		c &= 0xff;

		if (FUNC9((sta_reg & PIC32_UART_STA_PERR) ||
			     (sta_reg & PIC32_UART_STA_FERR))) {

			/* do stats first */
			if (sta_reg & PIC32_UART_STA_PERR)
				port->icount.parity++;
			if (sta_reg & PIC32_UART_STA_FERR)
				port->icount.frame++;

			/* update flag wrt read_status_mask */
			sta_reg &= port->read_status_mask;

			if (sta_reg & PIC32_UART_STA_FERR)
				flag = TTY_FRAME;
			if (sta_reg & PIC32_UART_STA_PERR)
				flag = TTY_PARITY;
		}

		if (FUNC8(port, c))
			continue;

		if ((sta_reg & port->ignore_status_mask) == 0)
			FUNC7(tty, c, flag);

	} while (--max_count);

	FUNC4(&port->lock);

	FUNC6(tty);
}