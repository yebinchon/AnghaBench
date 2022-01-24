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
struct uart_port {unsigned int x_char; TYPE_2__ icount; TYPE_1__* state; } ;
struct circ_buf {unsigned int* buf; size_t tail; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  OWL_UART_STAT ; 
 int OWL_UART_STAT_TFFU ; 
 int /*<<< orphan*/  OWL_UART_TXDAT ; 
 int SERIAL_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct circ_buf*) ; 
 scalar_t__ FUNC5 (struct circ_buf*) ; 
 scalar_t__ FUNC6 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*) ; 

__attribute__((used)) static void FUNC8(struct uart_port *port)
{
	struct circ_buf *xmit = &port->state->xmit;
	unsigned int ch;

	if (FUNC6(port))
		return;

	if (port->x_char) {
		while (!(FUNC1(port, OWL_UART_STAT) & OWL_UART_STAT_TFFU))
			FUNC0();
		FUNC3(port, port->x_char, OWL_UART_TXDAT);
		port->icount.tx++;
		port->x_char = 0;
	}

	while (!(FUNC1(port, OWL_UART_STAT) & OWL_UART_STAT_TFFU)) {
		if (FUNC5(xmit))
			break;

		ch = xmit->buf[xmit->tail];
		FUNC3(port, ch, OWL_UART_TXDAT);
		xmit->tail = (xmit->tail + 1) & (SERIAL_XMIT_SIZE - 1);
		port->icount.tx++;
	}

	if (FUNC4(xmit) < WAKEUP_CHARS)
		FUNC7(port);

	if (FUNC5(xmit))
		FUNC2(port);
}