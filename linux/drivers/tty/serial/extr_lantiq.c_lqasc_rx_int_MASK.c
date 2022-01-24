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
 int /*<<< orphan*/  ASC_IRNCR_RIR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ LTQ_ASC_IRNCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ltq_uart_port* FUNC4 (struct uart_port*) ; 

__attribute__((used)) static irqreturn_t
FUNC5(int irq, void *_port)
{
	unsigned long flags;
	struct uart_port *port = (struct uart_port *)_port;
	struct ltq_uart_port *ltq_port = FUNC4(port);

	FUNC2(&ltq_port->lock, flags);
	FUNC0(ASC_IRNCR_RIR, port->membase + LTQ_ASC_IRNCR);
	FUNC1(port);
	FUNC3(&ltq_port->lock, flags);
	return IRQ_HANDLED;
}