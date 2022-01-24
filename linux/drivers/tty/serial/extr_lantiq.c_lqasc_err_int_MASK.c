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
struct uart_port {scalar_t__ membase; } ;
struct ltq_uart_port {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int ASCWHBSTATE_CLRFE ; 
 int ASCWHBSTATE_CLRPE ; 
 int ASCWHBSTATE_CLRROE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ LTQ_ASC_WHBSTATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ltq_uart_port* FUNC3 (struct uart_port*) ; 

__attribute__((used)) static irqreturn_t
FUNC4(int irq, void *_port)
{
	unsigned long flags;
	struct uart_port *port = (struct uart_port *)_port;
	struct ltq_uart_port *ltq_port = FUNC3(port);

	FUNC1(&ltq_port->lock, flags);
	/* clear any pending interrupts */
	FUNC0(0, ASCWHBSTATE_CLRPE | ASCWHBSTATE_CLRFE |
		ASCWHBSTATE_CLRROE, port->membase + LTQ_ASC_WHBSTATE);
	FUNC2(&ltq_port->lock, flags);
	return IRQ_HANDLED;
}