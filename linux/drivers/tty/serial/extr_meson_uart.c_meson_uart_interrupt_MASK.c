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
struct uart_port {int /*<<< orphan*/  lock; scalar_t__ membase; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ AML_UART_CONTROL ; 
 int AML_UART_RX_EMPTY ; 
 scalar_t__ AML_UART_STATUS ; 
 int AML_UART_TX_FULL ; 
 int AML_UART_TX_INT_EN ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct uart_port *port = (struct uart_port *)dev_id;

	FUNC3(&port->lock);

	if (!(FUNC2(port->membase + AML_UART_STATUS) & AML_UART_RX_EMPTY))
		FUNC0(port);

	if (!(FUNC2(port->membase + AML_UART_STATUS) & AML_UART_TX_FULL)) {
		if (FUNC2(port->membase + AML_UART_CONTROL) & AML_UART_TX_INT_EN)
			FUNC1(port);
	}

	FUNC4(&port->lock);

	return IRQ_HANDLED;
}