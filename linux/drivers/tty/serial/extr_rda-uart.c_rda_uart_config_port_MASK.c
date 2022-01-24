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
struct uart_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  PORT_RDA ; 
 int /*<<< orphan*/  RDA_UART_IRQ_MASK ; 
 int /*<<< orphan*/  RDA_UART_STATUS ; 
 int UART_CONFIG_TYPE ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port, int flags)
{
	unsigned long irq_flags;

	if (flags & UART_CONFIG_TYPE) {
		port->type = PORT_RDA;
		FUNC0(port);
	}

	FUNC2(&port->lock, irq_flags);

	/* Clear mask, so no surprise interrupts. */
	FUNC1(port, 0, RDA_UART_IRQ_MASK);

	/* Clear status register */
	FUNC1(port, 0, RDA_UART_STATUS);

	FUNC3(&port->lock, irq_flags);
}