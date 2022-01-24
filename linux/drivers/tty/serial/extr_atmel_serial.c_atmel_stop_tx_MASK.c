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
struct atmel_uart_port {int tx_stopped; int /*<<< orphan*/  tx_done_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_PDC_PTCR ; 
 int /*<<< orphan*/  ATMEL_PDC_TXTDIS ; 
 int /*<<< orphan*/  ATMEL_US_CR ; 
 int /*<<< orphan*/  ATMEL_US_IDR ; 
 int /*<<< orphan*/  ATMEL_US_TXDIS ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 scalar_t__ FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct uart_port*) ; 
 struct atmel_uart_port* FUNC4 (struct uart_port*) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port)
{
	struct atmel_uart_port *atmel_port = FUNC4(port);

	if (FUNC3(port)) {
		/* disable PDC transmit */
		FUNC2(port, ATMEL_PDC_PTCR, ATMEL_PDC_TXTDIS);
	}

	/*
	 * Disable the transmitter.
	 * This is mandatory when DMA is used, otherwise the DMA buffer
	 * is fully transmitted.
	 */
	FUNC2(port, ATMEL_US_CR, ATMEL_US_TXDIS);
	atmel_port->tx_stopped = true;

	/* Disable interrupts */
	FUNC2(port, ATMEL_US_IDR, atmel_port->tx_done_mask);

	if (FUNC1(port))
		FUNC0(port);

}