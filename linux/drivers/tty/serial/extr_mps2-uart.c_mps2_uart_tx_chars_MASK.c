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
struct TYPE_3__ {int /*<<< orphan*/  tx; } ;
struct uart_port {TYPE_1__ icount; scalar_t__ x_char; TYPE_2__* state; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_4__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int UART_XMIT_SIZE ; 
 int /*<<< orphan*/  UARTn_DATA ; 
 int /*<<< orphan*/  UARTn_STATE ; 
 int UARTn_STATE_TX_FULL ; 
 scalar_t__ WAKEUP_CHARS ; 
 int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct circ_buf*) ; 
 scalar_t__ FUNC4 (struct circ_buf*) ; 
 scalar_t__ FUNC5 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*) ; 

__attribute__((used)) static void FUNC7(struct uart_port *port)
{
	struct circ_buf *xmit = &port->state->xmit;

	while (!(FUNC0(port, UARTn_STATE) & UARTn_STATE_TX_FULL)) {
		if (port->x_char) {
			FUNC2(port, port->x_char, UARTn_DATA);
			port->x_char = 0;
			port->icount.tx++;
			continue;
		}

		if (FUNC4(xmit) || FUNC5(port))
			break;

		FUNC2(port, xmit->buf[xmit->tail], UARTn_DATA);
		xmit->tail = (xmit->tail + 1) % UART_XMIT_SIZE;
		port->icount.tx++;
	}

	if (FUNC3(xmit) < WAKEUP_CHARS)
		FUNC6(port);

	if (FUNC4(xmit))
		FUNC1(port);
}