#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct uart_port {int /*<<< orphan*/  dev; } ;
struct atmel_uart_port {unsigned int tx_done_mask; int hd_start_rx; int /*<<< orphan*/  tasklet_tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_US_CSR ; 
 int /*<<< orphan*/  ATMEL_US_IDR ; 
 int ATMEL_US_TXEMPTY ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_uart_port*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct atmel_uart_port* FUNC5 (struct uart_port*) ; 

__attribute__((used)) static void
FUNC6(struct uart_port *port, unsigned int pending)
{
	struct atmel_uart_port *atmel_port = FUNC5(port);

	if (pending & atmel_port->tx_done_mask) {
		FUNC3(port, ATMEL_US_IDR,
				  atmel_port->tx_done_mask);

		/* Start RX if flag was set and FIFO is empty */
		if (atmel_port->hd_start_rx) {
			if (!(FUNC2(port, ATMEL_US_CSR)
					& ATMEL_US_TXEMPTY))
				FUNC4(port->dev, "Should start RX, but TX fifo is not empty\n");

			atmel_port->hd_start_rx = false;
			FUNC0(port);
		}

		FUNC1(atmel_port, &atmel_port->tasklet_tx);
	}
}