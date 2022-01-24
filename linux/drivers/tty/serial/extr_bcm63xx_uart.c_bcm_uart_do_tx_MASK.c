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
struct uart_port {unsigned int x_char; unsigned int fifosize; TYPE_2__ icount; TYPE_1__* state; } ;
struct circ_buf {unsigned int* buf; size_t tail; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_FIFO_REG ; 
 int /*<<< orphan*/  UART_IR_REG ; 
 int /*<<< orphan*/  UART_MCTL_REG ; 
 unsigned int UART_MCTL_TXFIFOFILL_MASK ; 
 unsigned int UART_MCTL_TXFIFOFILL_SHIFT ; 
 unsigned int UART_TX_INT_MASK ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 unsigned int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct circ_buf*) ; 
 scalar_t__ FUNC4 (struct circ_buf*) ; 
 scalar_t__ FUNC5 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*) ; 

__attribute__((used)) static void FUNC7(struct uart_port *port)
{
	struct circ_buf *xmit;
	unsigned int val, max_count;

	if (port->x_char) {
		FUNC2(port, port->x_char, UART_FIFO_REG);
		port->icount.tx++;
		port->x_char = 0;
		return;
	}

	if (FUNC5(port)) {
		FUNC1(port);
		return;
	}

	xmit = &port->state->xmit;
	if (FUNC4(xmit))
		goto txq_empty;

	val = FUNC0(port, UART_MCTL_REG);
	val = (val & UART_MCTL_TXFIFOFILL_MASK) >> UART_MCTL_TXFIFOFILL_SHIFT;
	max_count = port->fifosize - val;

	while (max_count--) {
		unsigned int c;

		c = xmit->buf[xmit->tail];
		FUNC2(port, c, UART_FIFO_REG);
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		port->icount.tx++;
		if (FUNC4(xmit))
			break;
	}

	if (FUNC3(xmit) < WAKEUP_CHARS)
		FUNC6(port);

	if (FUNC4(xmit))
		goto txq_empty;
	return;

txq_empty:
	/* nothing to send, disable transmit interrupt */
	val = FUNC0(port, UART_IR_REG);
	val &= ~UART_TX_INT_MASK;
	FUNC2(port, val, UART_IR_REG);
	return;
}