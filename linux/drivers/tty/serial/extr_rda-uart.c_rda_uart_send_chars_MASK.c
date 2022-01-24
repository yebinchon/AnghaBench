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
typedef  unsigned int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  tx; } ;
struct uart_port {unsigned int x_char; TYPE_2__ icount; TYPE_1__* state; } ;
struct circ_buf {unsigned int* buf; size_t tail; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDA_UART_IRQ_MASK ; 
 int /*<<< orphan*/  RDA_UART_RXTX_BUFFER ; 
 int /*<<< orphan*/  RDA_UART_STATUS ; 
 unsigned int RDA_UART_TX_DATA_NEEDED ; 
 int RDA_UART_TX_FIFO_MASK ; 
 int SERIAL_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct circ_buf*) ; 
 scalar_t__ FUNC4 (struct circ_buf*) ; 
 scalar_t__ FUNC5 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*) ; 

__attribute__((used)) static void FUNC7(struct uart_port *port)
{
	struct circ_buf *xmit = &port->state->xmit;
	unsigned int ch;
	u32 val;

	if (FUNC5(port))
		return;

	if (port->x_char) {
		while (!(FUNC1(port, RDA_UART_STATUS) &
			 RDA_UART_TX_FIFO_MASK))
			FUNC0();

		FUNC2(port, port->x_char, RDA_UART_RXTX_BUFFER);
		port->icount.tx++;
		port->x_char = 0;
	}

	while (FUNC1(port, RDA_UART_STATUS) & RDA_UART_TX_FIFO_MASK) {
		if (FUNC4(xmit))
			break;

		ch = xmit->buf[xmit->tail];
		FUNC2(port, ch, RDA_UART_RXTX_BUFFER);
		xmit->tail = (xmit->tail + 1) & (SERIAL_XMIT_SIZE - 1);
		port->icount.tx++;
	}

	if (FUNC3(xmit) < WAKEUP_CHARS)
		FUNC6(port);

	if (!FUNC4(xmit)) {
		/* Re-enable Tx FIFO interrupt */
		val = FUNC1(port, RDA_UART_IRQ_MASK);
		val |= RDA_UART_TX_DATA_NEEDED;
		FUNC2(port, val, RDA_UART_IRQ_MASK);
	}
}