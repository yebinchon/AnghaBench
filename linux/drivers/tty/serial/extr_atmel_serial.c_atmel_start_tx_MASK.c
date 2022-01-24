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
struct uart_port {int dummy; } ;
struct atmel_uart_port {int tx_done_mask; int tx_stopped; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_PDC_PTCR ; 
 int /*<<< orphan*/  ATMEL_PDC_PTSR ; 
 int ATMEL_PDC_TXTEN ; 
 int /*<<< orphan*/  ATMEL_US_CR ; 
 int /*<<< orphan*/  ATMEL_US_IER ; 
 int ATMEL_US_TXEN ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 scalar_t__ FUNC1 (struct uart_port*) ; 
 int FUNC2 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct uart_port*) ; 
 scalar_t__ FUNC5 (struct uart_port*) ; 
 struct atmel_uart_port* FUNC6 (struct uart_port*) ; 

__attribute__((used)) static void FUNC7(struct uart_port *port)
{
	struct atmel_uart_port *atmel_port = FUNC6(port);

	if (FUNC5(port) && (FUNC2(port, ATMEL_PDC_PTSR)
				       & ATMEL_PDC_TXTEN))
		/* The transmitter is already running.  Yes, we
		   really need this.*/
		return;

	if (FUNC5(port) || FUNC4(port))
		if (FUNC1(port))
			FUNC0(port);

	if (FUNC5(port))
		/* re-enable PDC transmit */
		FUNC3(port, ATMEL_PDC_PTCR, ATMEL_PDC_TXTEN);

	/* Enable interrupts */
	FUNC3(port, ATMEL_US_IER, atmel_port->tx_done_mask);

	/* re-enable the transmitter */
	FUNC3(port, ATMEL_US_CR, ATMEL_US_TXEN);
	atmel_port->tx_stopped = false;
}