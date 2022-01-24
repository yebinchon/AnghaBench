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
struct TYPE_3__ {int /*<<< orphan*/  frame; int /*<<< orphan*/  overrun; int /*<<< orphan*/  parity; int /*<<< orphan*/  brk; int /*<<< orphan*/  rx; } ;
struct uart_port {unsigned char read_status_mask; int /*<<< orphan*/  lock; TYPE_2__* state; TYPE_1__ icount; scalar_t__ membase; } ;
struct mcf_uart {struct uart_port port; } ;
struct TYPE_4__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 scalar_t__ MCFUART_UCR ; 
 int /*<<< orphan*/  MCFUART_UCR_CMDRESETERR ; 
 scalar_t__ MCFUART_URB ; 
 scalar_t__ MCFUART_USR ; 
 unsigned char MCFUART_USR_RXBREAK ; 
 unsigned char MCFUART_USR_RXERR ; 
 unsigned char MCFUART_USR_RXFRAMING ; 
 unsigned char MCFUART_USR_RXOVERRUN ; 
 unsigned char MCFUART_USR_RXPARITY ; 
 unsigned char MCFUART_USR_RXREADY ; 
 unsigned char TTY_BREAK ; 
 unsigned char TTY_FRAME ; 
 unsigned char TTY_NORMAL ; 
 unsigned char TTY_PARITY ; 
 unsigned char FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct uart_port*) ; 
 scalar_t__ FUNC5 (struct uart_port*,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*,unsigned char,unsigned char,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct mcf_uart *pp)
{
	struct uart_port *port = &pp->port;
	unsigned char status, ch, flag;

	while ((status = FUNC0(port->membase + MCFUART_USR)) & MCFUART_USR_RXREADY) {
		ch = FUNC0(port->membase + MCFUART_URB);
		flag = TTY_NORMAL;
		port->icount.rx++;

		if (status & MCFUART_USR_RXERR) {
			FUNC7(MCFUART_UCR_CMDRESETERR,
				port->membase + MCFUART_UCR);

			if (status & MCFUART_USR_RXBREAK) {
				port->icount.brk++;
				if (FUNC4(port))
					continue;
			} else if (status & MCFUART_USR_RXPARITY) {
				port->icount.parity++;
			} else if (status & MCFUART_USR_RXOVERRUN) {
				port->icount.overrun++;
			} else if (status & MCFUART_USR_RXFRAMING) {
				port->icount.frame++;
			}

			status &= port->read_status_mask;

			if (status & MCFUART_USR_RXBREAK)
				flag = TTY_BREAK;
			else if (status & MCFUART_USR_RXPARITY)
				flag = TTY_PARITY;
			else if (status & MCFUART_USR_RXFRAMING)
				flag = TTY_FRAME;
		}

		if (FUNC5(port, ch))
			continue;
		FUNC6(port, status, MCFUART_USR_RXOVERRUN, ch, flag);
	}

	FUNC2(&port->lock);
	FUNC3(&port->state->port);
	FUNC1(&port->lock);
}