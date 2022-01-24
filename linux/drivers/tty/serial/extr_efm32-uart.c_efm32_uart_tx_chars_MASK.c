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
struct uart_port {scalar_t__ x_char; TYPE_2__ icount; TYPE_1__* state; } ;
struct efm32_uart_port {struct uart_port port; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int UART_XMIT_SIZE ; 
 int /*<<< orphan*/  UARTn_STATUS ; 
 int UARTn_STATUS_TXBL ; 
 int UARTn_STATUS_TXC ; 
 int /*<<< orphan*/  UARTn_TXDATA ; 
 scalar_t__ WAKEUP_CHARS ; 
 int FUNC0 (struct efm32_uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct efm32_uart_port*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct circ_buf*) ; 
 scalar_t__ FUNC4 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*) ; 

__attribute__((used)) static void FUNC7(struct efm32_uart_port *efm_port)
{
	struct uart_port *port = &efm_port->port;
	struct circ_buf *xmit = &port->state->xmit;

	while (FUNC0(efm_port, UARTn_STATUS) &
			UARTn_STATUS_TXBL) {
		if (port->x_char) {
			port->icount.tx++;
			FUNC2(efm_port, port->x_char,
					UARTn_TXDATA);
			port->x_char = 0;
			continue;
		}
		if (!FUNC4(xmit) && !FUNC5(port)) {
			port->icount.tx++;
			FUNC2(efm_port, xmit->buf[xmit->tail],
					UARTn_TXDATA);
			xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		} else
			break;
	}

	if (FUNC3(xmit) < WAKEUP_CHARS)
		FUNC6(port);

	if (!port->x_char && FUNC4(xmit) &&
			FUNC0(efm_port, UARTn_STATUS) &
				UARTn_STATUS_TXC)
		FUNC1(port);
}