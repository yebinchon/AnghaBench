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
struct TYPE_4__ {int /*<<< orphan*/  tx; } ;
struct uart_port {unsigned int fifosize; scalar_t__ membase; TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 unsigned int STAT_TX_FIFO_FUL ; 
 scalar_t__ UART_STAT ; 
 scalar_t__ FUNC0 (struct uart_port*) ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct circ_buf*) ; 
 scalar_t__ FUNC4 (struct circ_buf*) ; 
 scalar_t__ FUNC5 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct uart_port *port, unsigned int status)
{
	struct circ_buf *xmit = &port->state->xmit;
	unsigned int count;
	unsigned int st;

	if (port->x_char) {
		FUNC7(port->x_char, port->membase + FUNC0(port));
		port->icount.tx++;
		port->x_char = 0;
		return;
	}

	if (FUNC4(xmit) || FUNC5(port)) {
		FUNC1(port);
		return;
	}

	for (count = 0; count < port->fifosize; count++) {
		FUNC7(xmit->buf[xmit->tail], port->membase + FUNC0(port));
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		port->icount.tx++;

		if (FUNC4(xmit))
			break;

		st = FUNC2(port->membase + UART_STAT);
		if (st & STAT_TX_FIFO_FUL)
			break;
	}

	if (FUNC3(xmit) < WAKEUP_CHARS)
		FUNC6(port);

	if (FUNC4(xmit))
		FUNC1(port);
}