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
struct TYPE_4__ {int /*<<< orphan*/  brk; int /*<<< orphan*/  frame; int /*<<< orphan*/  overrun; int /*<<< orphan*/  rx; } ;
struct uart_port {int read_status_mask; int ignore_status_mask; int /*<<< orphan*/  lock; TYPE_2__ icount; scalar_t__ membase; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
struct TYPE_3__ {struct tty_port port; } ;

/* Variables and functions */
 int AML_UART_CLEAR_ERR ; 
 scalar_t__ AML_UART_CONTROL ; 
 int AML_UART_ERR ; 
 int AML_UART_FRAME_ERR ; 
 int AML_UART_PARITY_ERR ; 
 scalar_t__ AML_UART_RFIFO ; 
 int AML_UART_RX_EMPTY ; 
 scalar_t__ AML_UART_STATUS ; 
 int AML_UART_TX_FIFO_WERR ; 
 char TTY_BREAK ; 
 char TTY_FRAME ; 
 char TTY_NORMAL ; 
 char TTY_OVERRUN ; 
 char TTY_PARITY ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_port*,int,char) ; 
 scalar_t__ FUNC5 (struct uart_port*) ; 
 scalar_t__ FUNC6 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct uart_port *port)
{
	struct tty_port *tport = &port->state->port;
	char flag;
	u32 ostatus, status, ch, mode;

	do {
		flag = TTY_NORMAL;
		port->icount.rx++;
		ostatus = status = FUNC0(port->membase + AML_UART_STATUS);

		if (status & AML_UART_ERR) {
			if (status & AML_UART_TX_FIFO_WERR)
				port->icount.overrun++;
			else if (status & AML_UART_FRAME_ERR)
				port->icount.frame++;
			else if (status & AML_UART_PARITY_ERR)
				port->icount.frame++;

			mode = FUNC0(port->membase + AML_UART_CONTROL);
			mode |= AML_UART_CLEAR_ERR;
			FUNC7(mode, port->membase + AML_UART_CONTROL);

			/* It doesn't clear to 0 automatically */
			mode &= ~AML_UART_CLEAR_ERR;
			FUNC7(mode, port->membase + AML_UART_CONTROL);

			status &= port->read_status_mask;
			if (status & AML_UART_FRAME_ERR)
				flag = TTY_FRAME;
			else if (status & AML_UART_PARITY_ERR)
				flag = TTY_PARITY;
		}

		ch = FUNC0(port->membase + AML_UART_RFIFO);
		ch &= 0xff;

		if ((ostatus & AML_UART_FRAME_ERR) && (ch == 0)) {
			port->icount.brk++;
			flag = TTY_BREAK;
			if (FUNC5(port))
				continue;
		}

		if (FUNC6(port, ch))
			continue;

		if ((status & port->ignore_status_mask) == 0)
			FUNC4(tport, ch, flag);

		if (status & AML_UART_TX_FIFO_WERR)
			FUNC4(tport, 0, TTY_OVERRUN);

	} while (!(FUNC0(port->membase + AML_UART_STATUS) & AML_UART_RX_EMPTY));

	FUNC2(&port->lock);
	FUNC3(tport);
	FUNC1(&port->lock);
}