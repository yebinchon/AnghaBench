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
 unsigned long RX_FIFO_INTS ; 
 unsigned long TCTS ; 
 unsigned long TX_FIFO_INTS ; 
 int /*<<< orphan*/  VT8500_URISR ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct uart_port *port = dev_id;
	unsigned long isr;

	FUNC3(&port->lock);
	isr = FUNC5(port, VT8500_URISR);

	/* Acknowledge active status bits */
	FUNC6(port, isr, VT8500_URISR);

	if (isr & RX_FIFO_INTS)
		FUNC1(port);
	if (isr & TX_FIFO_INTS)
		FUNC2(port);
	if (isr & TCTS)
		FUNC0(port);

	FUNC4(&port->lock);

	return IRQ_HANDLED;
}