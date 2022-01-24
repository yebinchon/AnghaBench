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
struct uart_port {TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct atmel_uart_port {int tx_done_mask; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_US_CSR ; 
 int /*<<< orphan*/  ATMEL_US_IER ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int /*<<< orphan*/ ,int) ; 
 struct atmel_uart_port* FUNC3 (struct uart_port*) ; 
 scalar_t__ FUNC4 (struct circ_buf*) ; 
 scalar_t__ FUNC5 (struct circ_buf*) ; 
 scalar_t__ FUNC6 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*) ; 

__attribute__((used)) static void FUNC8(struct uart_port *port)
{
	struct circ_buf *xmit = &port->state->xmit;
	struct atmel_uart_port *atmel_port = FUNC3(port);

	if (port->x_char &&
	    (FUNC0(port, ATMEL_US_CSR) & atmel_port->tx_done_mask)) {
		FUNC1(port, port->x_char);
		port->icount.tx++;
		port->x_char = 0;
	}
	if (FUNC5(xmit) || FUNC6(port))
		return;

	while (FUNC0(port, ATMEL_US_CSR) &
	       atmel_port->tx_done_mask) {
		FUNC1(port, xmit->buf[xmit->tail]);
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		port->icount.tx++;
		if (FUNC5(xmit))
			break;
	}

	if (FUNC4(xmit) < WAKEUP_CHARS)
		FUNC7(port);

	if (!FUNC5(xmit))
		/* Enable interrupts */
		FUNC2(port, ATMEL_US_IER,
				  atmel_port->tx_done_mask);
}