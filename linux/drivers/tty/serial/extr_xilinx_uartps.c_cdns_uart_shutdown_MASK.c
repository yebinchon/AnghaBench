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
struct uart_port {int /*<<< orphan*/  irq; int /*<<< orphan*/  lock; scalar_t__ membase; } ;

/* Variables and functions */
 scalar_t__ CDNS_UART_CR ; 
 int CDNS_UART_CR_RX_DIS ; 
 int CDNS_UART_CR_TX_DIS ; 
 scalar_t__ CDNS_UART_IDR ; 
 scalar_t__ CDNS_UART_IMR ; 
 scalar_t__ CDNS_UART_ISR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct uart_port*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port)
{
	int status;
	unsigned long flags;

	FUNC2(&port->lock, flags);

	/* Disable interrupts */
	status = FUNC1(port->membase + CDNS_UART_IMR);
	FUNC4(status, port->membase + CDNS_UART_IDR);
	FUNC4(0xffffffff, port->membase + CDNS_UART_ISR);

	/* Disable the TX and RX */
	FUNC4(CDNS_UART_CR_TX_DIS | CDNS_UART_CR_RX_DIS,
			port->membase + CDNS_UART_CR);

	FUNC3(&port->lock, flags);

	FUNC0(port->irq, port);
}