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
struct stm32_port {scalar_t__ rx_ch; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int) ; 
 struct stm32_port* FUNC3 (struct uart_port*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *ptr)
{
	struct uart_port *port = ptr;
	struct stm32_port *stm32_port = FUNC3(port);

	FUNC0(&port->lock);

	if (stm32_port->rx_ch)
		FUNC2(port, true);

	FUNC1(&port->lock);

	return IRQ_HANDLED;
}