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
struct TYPE_4__ {scalar_t__ tx; } ;
struct uart_port {unsigned int fifosize; TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct circ_buf {unsigned int tail; scalar_t__ buf; int /*<<< orphan*/  head; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  MAX310X_THR_REG ; 
 int /*<<< orphan*/  MAX310X_TXFIFOLVL_REG ; 
 int UART_XMIT_SIZE ; 
 unsigned int WAKEUP_CHARS ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,scalar_t__,unsigned int) ; 
 unsigned int FUNC3 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned int FUNC5 (struct circ_buf*) ; 
 scalar_t__ FUNC6 (struct circ_buf*) ; 
 scalar_t__ FUNC7 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_port*) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct uart_port *port)
{
	struct circ_buf *xmit = &port->state->xmit;
	unsigned int txlen, to_send, until_end;

	if (FUNC9(port->x_char)) {
		FUNC4(port, MAX310X_THR_REG, port->x_char);
		port->icount.tx++;
		port->x_char = 0;
		return;
	}

	if (FUNC6(xmit) || FUNC7(port))
		return;

	/* Get length of data pending in circular buffer */
	to_send = FUNC5(xmit);
	until_end = FUNC0(xmit->head, xmit->tail, UART_XMIT_SIZE);
	if (FUNC1(to_send)) {
		/* Limit to size of TX FIFO */
		txlen = FUNC3(port, MAX310X_TXFIFOLVL_REG);
		txlen = port->fifosize - txlen;
		to_send = (to_send > txlen) ? txlen : to_send;

		if (until_end < to_send) {
			/* It's a circ buffer -- wrap around.
			 * We could do that in one SPI transaction, but meh. */
			FUNC2(port, xmit->buf + xmit->tail, until_end);
			FUNC2(port, xmit->buf, to_send - until_end);
		} else {
			FUNC2(port, xmit->buf + xmit->tail, to_send);
		}

		/* Add data to send */
		port->icount.tx += to_send;
		xmit->tail = (xmit->tail + to_send) & (UART_XMIT_SIZE - 1);
	}

	if (FUNC5(xmit) < WAKEUP_CHARS)
		FUNC8(port);
}