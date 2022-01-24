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
struct TYPE_3__ {int /*<<< orphan*/  overrun; int /*<<< orphan*/  frame; int /*<<< orphan*/  parity; int /*<<< orphan*/  brk; int /*<<< orphan*/  rx; } ;
struct uart_port {unsigned int fifosize; unsigned int read_status_mask; int /*<<< orphan*/  lock; TYPE_2__* state; TYPE_1__ icount; } ;
struct TYPE_4__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 unsigned int TTY_FRAME ; 
 unsigned int TTY_NORMAL ; 
 unsigned int TTY_PARITY ; 
 unsigned int UART_DUMMY_RSR_RX ; 
 unsigned int FUNC0 (struct uart_port*) ; 
 unsigned int FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 unsigned int UART_STATUS_BR ; 
 unsigned int UART_STATUS_ERR ; 
 unsigned int UART_STATUS_FE ; 
 unsigned int UART_STATUS_OE ; 
 unsigned int UART_STATUS_PE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct uart_port*) ; 
 scalar_t__ FUNC8 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_port*,unsigned int,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC10(struct uart_port *port)
{
	unsigned int status, ch, rsr, flag;
	unsigned int max_chars = port->fifosize;

	status = FUNC1(port);

	while (FUNC3(status) && (max_chars--)) {

		ch = FUNC0(port);
		flag = TTY_NORMAL;

		port->icount.rx++;

		rsr = FUNC1(port) | UART_DUMMY_RSR_RX;
		FUNC2(port, 0);
		if (rsr & UART_STATUS_ERR) {

			if (rsr & UART_STATUS_BR) {
				rsr &= ~(UART_STATUS_FE | UART_STATUS_PE);
				port->icount.brk++;
				if (FUNC7(port))
					goto ignore_char;
			} else if (rsr & UART_STATUS_PE) {
				port->icount.parity++;
			} else if (rsr & UART_STATUS_FE) {
				port->icount.frame++;
			}
			if (rsr & UART_STATUS_OE)
				port->icount.overrun++;

			rsr &= port->read_status_mask;

			if (rsr & UART_STATUS_PE)
				flag = TTY_PARITY;
			else if (rsr & UART_STATUS_FE)
				flag = TTY_FRAME;
		}

		if (FUNC8(port, ch))
			goto ignore_char;

		FUNC9(port, rsr, UART_STATUS_OE, ch, flag);


	      ignore_char:
		status = FUNC1(port);
	}

	FUNC5(&port->lock);
	FUNC6(&port->state->port);
	FUNC4(&port->lock);
}