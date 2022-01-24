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
struct uart_port {int /*<<< orphan*/  dev; scalar_t__ membase; } ;
struct mvebu_uart {int /*<<< orphan*/ * irq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct uart_port*) ; 
 size_t UART_IRQ_SUM ; 
 size_t UART_RX_IRQ ; 
 size_t UART_TX_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uart_port*) ; 
 struct mvebu_uart* FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port)
{
	struct mvebu_uart *mvuart = FUNC2(port);

	FUNC3(0, port->membase + FUNC0(port));

	if (!mvuart->irq[UART_TX_IRQ]) {
		FUNC1(port->dev, mvuart->irq[UART_IRQ_SUM], port);
	} else {
		FUNC1(port->dev, mvuart->irq[UART_RX_IRQ], port);
		FUNC1(port->dev, mvuart->irq[UART_TX_IRQ], port);
	}
}