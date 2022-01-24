#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uart_port {TYPE_1__* state; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  ULITE_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct uart_port*) ; 
 int FUNC4 (struct uart_port*,int) ; 
 int FUNC5 (struct uart_port*,int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct uart_port *port = dev_id;
	int stat, busy, n = 0;
	unsigned long flags;

	do {
		FUNC0(&port->lock, flags);
		stat = FUNC3(ULITE_STATUS, port);
		busy  = FUNC4(port, stat);
		busy |= FUNC5(port, stat);
		FUNC1(&port->lock, flags);
		n++;
	} while (busy);

	/* work done? */
	if (n > 1) {
		FUNC2(&port->state->port);
		return IRQ_HANDLED;
	} else {
		return IRQ_NONE;
	}
}