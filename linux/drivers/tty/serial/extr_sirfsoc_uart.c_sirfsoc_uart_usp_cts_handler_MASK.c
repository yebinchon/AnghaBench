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
struct sirfsoc_uart_port {int /*<<< orphan*/  cts_gpio; scalar_t__ ms_enabled; struct uart_port port; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct sirfsoc_uart_port *sirfport = (struct sirfsoc_uart_port *)dev_id;
	struct uart_port *port = &sirfport->port;
	FUNC2(&port->lock);
	if (FUNC1(sirfport->cts_gpio) && sirfport->ms_enabled)
		FUNC4(port,
				!FUNC0(sirfport->cts_gpio));
	FUNC3(&port->lock);
	return IRQ_HANDLED;
}