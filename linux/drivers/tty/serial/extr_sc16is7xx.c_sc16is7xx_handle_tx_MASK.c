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
struct uart_port {TYPE_2__ icount; int /*<<< orphan*/  dev; scalar_t__ x_char; TYPE_1__* state; } ;
struct sc16is7xx_port {int /*<<< orphan*/ * buf; } ;
struct circ_buf {size_t tail; int /*<<< orphan*/ * buf; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 unsigned int SC16IS7XX_FIFO_SIZE ; 
 int /*<<< orphan*/  SC16IS7XX_THR_REG ; 
 int /*<<< orphan*/  SC16IS7XX_TXLVL_REG ; 
 int UART_XMIT_SIZE ; 
 unsigned int WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 struct sc16is7xx_port* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,unsigned int) ; 
 unsigned int FUNC4 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned int FUNC6 (struct circ_buf*) ; 
 scalar_t__ FUNC7 (struct circ_buf*) ; 
 scalar_t__ FUNC8 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_port*) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct uart_port *port)
{
	struct sc16is7xx_port *s = FUNC1(port->dev);
	struct circ_buf *xmit = &port->state->xmit;
	unsigned int txlen, to_send, i;

	if (FUNC10(port->x_char)) {
		FUNC5(port, SC16IS7XX_THR_REG, port->x_char);
		port->icount.tx++;
		port->x_char = 0;
		return;
	}

	if (FUNC7(xmit) || FUNC8(port))
		return;

	/* Get length of data pending in circular buffer */
	to_send = FUNC6(xmit);
	if (FUNC2(to_send)) {
		/* Limit to size of TX FIFO */
		txlen = FUNC4(port, SC16IS7XX_TXLVL_REG);
		if (txlen > SC16IS7XX_FIFO_SIZE) {
			FUNC0(port->dev,
				"chip reports %d free bytes in TX fifo, but it only has %d",
				txlen, SC16IS7XX_FIFO_SIZE);
			txlen = 0;
		}
		to_send = (to_send > txlen) ? txlen : to_send;

		/* Add data to send */
		port->icount.tx += to_send;

		/* Convert to linear buffer */
		for (i = 0; i < to_send; ++i) {
			s->buf[i] = xmit->buf[xmit->tail];
			xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		}

		FUNC3(port, to_send);
	}

	if (FUNC6(xmit) < WAKEUP_CHARS)
		FUNC9(port);
}