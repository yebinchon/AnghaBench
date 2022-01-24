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
struct uart_port {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int RXIENB ; 
 unsigned int TXEMPTY ; 
 unsigned int TXIENB ; 
 unsigned int FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct uart_port *port = dev_id;
	unsigned int status;

	status = FUNC0(port);

	/*
	 * Single IRQ for both Rx (data available) Tx (room available) Interrupt
	 * notifications from the UART Controller.
	 * To demultiplex between the two, we check the relevant bits
	 */
	if (status & RXIENB) {

		/* already in ISR, no need of xx_irqsave */
		FUNC4(&port->lock);
		FUNC2(port, status);
		FUNC5(&port->lock);
	}

	if ((status & TXIENB) && (status & TXEMPTY)) {

		/* Unconditionally disable further Tx-Interrupts.
		 * will be enabled by tx_chars() if needed.
		 */
		FUNC1(port);

		FUNC4(&port->lock);

		if (!FUNC6(port))
			FUNC3(port);

		FUNC5(&port->lock);
	}

	return IRQ_HANDLED;
}