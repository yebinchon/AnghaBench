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
struct uart_port {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  OWL_UART_STAT ; 
 int OWL_UART_STAT_RIP ; 
 int OWL_UART_STAT_TIP ; 
 int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct uart_port *port = dev_id;
	unsigned long flags;
	u32 stat;

	FUNC4(&port->lock, flags);

	stat = FUNC0(port, OWL_UART_STAT);

	if (stat & OWL_UART_STAT_RIP)
		FUNC1(port);

	if (stat & OWL_UART_STAT_TIP)
		FUNC2(port);

	stat = FUNC0(port, OWL_UART_STAT);
	stat |= OWL_UART_STAT_RIP | OWL_UART_STAT_TIP;
	FUNC3(port, stat, OWL_UART_STAT);

	FUNC5(&port->lock, flags);

	return IRQ_HANDLED;
}