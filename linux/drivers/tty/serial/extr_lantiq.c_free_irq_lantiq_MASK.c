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
struct ltq_uart_port {int /*<<< orphan*/  err_irq; int /*<<< orphan*/  rx_irq; int /*<<< orphan*/  tx_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct uart_port*) ; 
 struct ltq_uart_port* FUNC1 (struct uart_port*) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port)
{
	struct ltq_uart_port *ltq_port = FUNC1(port);

	FUNC0(ltq_port->tx_irq, port);
	FUNC0(ltq_port->rx_irq, port);
	FUNC0(ltq_port->err_irq, port);
}