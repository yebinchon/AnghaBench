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
struct TYPE_3__ {int /*<<< orphan*/  rx; int /*<<< orphan*/  frame; int /*<<< orphan*/  overrun; } ;
struct uart_port {int /*<<< orphan*/  lock; TYPE_2__* state; TYPE_1__ icount; } ;
struct TYPE_4__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 unsigned int RXEMPTY ; 
 unsigned int RXFERR ; 
 unsigned int RXOERR ; 
 unsigned int TTY_FRAME ; 
 unsigned int TTY_NORMAL ; 
 unsigned int TTY_OVERRUN ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,unsigned int) ; 
 unsigned int FUNC1 (struct uart_port*) ; 
 unsigned int FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC8 (unsigned int) ; 

__attribute__((used)) static void FUNC9(struct uart_port *port, unsigned int status)
{
	unsigned int ch, flg = 0;

	/*
	 * UART has 4 deep RX-FIFO. Driver's recongnition of this fact
	 * is very subtle. Here's how ...
	 * Upon getting a RX-Intr, such that RX-EMPTY=0, meaning data available,
	 * driver reads the DATA Reg and keeps doing that in a loop, until
	 * RX-EMPTY=1. Multiple chars being avail, with a single Interrupt,
	 * before RX-EMPTY=0, implies some sort of buffering going on in the
	 * controller, which is indeed the Rx-FIFO.
	 */
	do {
		/*
		 * This could be an Rx Intr for err (no data),
		 * so check err and clear that Intr first
		 */
		if (FUNC8(status & (RXOERR | RXFERR))) {
			if (status & RXOERR) {
				port->icount.overrun++;
				flg = TTY_OVERRUN;
				FUNC0(port, RXOERR);
			}

			if (status & RXFERR) {
				port->icount.frame++;
				flg = TTY_FRAME;
				FUNC0(port, RXFERR);
			}
		} else
			flg = TTY_NORMAL;

		if (status & RXEMPTY)
			continue;

		ch = FUNC1(port);
		port->icount.rx++;

		if (!(FUNC6(port, ch)))
			FUNC7(port, status, RXOERR, ch, flg);

		FUNC4(&port->lock);
		FUNC5(&port->state->port);
		FUNC3(&port->lock);
	} while (!((status = FUNC2(port)) & RXEMPTY));
}