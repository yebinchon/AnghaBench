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
typedef  int u32 ;
struct uart_port {scalar_t__ membase; } ;
struct ltq_uart_port {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int ASC_IRNCR_EIR ; 
 int ASC_IRNCR_MASK ; 
 int ASC_IRNCR_RIR ; 
 int ASC_IRNCR_TIR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ LTQ_ASC_IRNCR ; 
 int /*<<< orphan*/  FUNC0 (int,void*) ; 
 int /*<<< orphan*/  FUNC1 (int,void*) ; 
 int /*<<< orphan*/  FUNC2 (int,void*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ltq_uart_port* FUNC6 (struct uart_port*) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *p)
{
	unsigned long flags;
	u32 stat;
	struct uart_port *port = p;
	struct ltq_uart_port *ltq_port = FUNC6(port);

	FUNC4(&ltq_port->lock, flags);
	stat = FUNC3(port->membase + LTQ_ASC_IRNCR);
	FUNC5(&ltq_port->lock, flags);
	if (!(stat & ASC_IRNCR_MASK))
		return IRQ_NONE;

	if (stat & ASC_IRNCR_TIR)
		FUNC2(irq, p);

	if (stat & ASC_IRNCR_RIR)
		FUNC1(irq, p);

	if (stat & ASC_IRNCR_EIR)
		FUNC0(irq, p);

	return IRQ_HANDLED;
}