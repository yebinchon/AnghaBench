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
 unsigned int FUNC0 (struct uart_port*) ; 
 unsigned int UART_STATUS_DR ; 
 unsigned int UART_STATUS_THE ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct uart_port *port = dev_id;
	unsigned int status;

	FUNC3(&port->lock);

	status = FUNC0(port);
	if (status & UART_STATUS_DR)
		FUNC1(port);
	if (status & UART_STATUS_THE)
		FUNC2(port);

	FUNC4(&port->lock);

	return IRQ_HANDLED;
}