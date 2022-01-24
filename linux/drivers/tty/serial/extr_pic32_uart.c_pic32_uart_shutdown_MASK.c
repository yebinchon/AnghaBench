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
struct pic32_sport {int /*<<< orphan*/  irq_rx; int /*<<< orphan*/  irq_tx; int /*<<< orphan*/  irq_fault; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct pic32_sport*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pic32_sport* FUNC5 (struct uart_port*) ; 

__attribute__((used)) static void FUNC6(struct uart_port *port)
{
	struct pic32_sport *sport = FUNC5(port);
	unsigned long flags;

	/* disable uart */
	FUNC3(&port->lock, flags);
	FUNC2(port);
	FUNC4(&port->lock, flags);
	FUNC1(sport);

	/* free all 3 interrupts for this UART */
	FUNC0(sport->irq_fault, port);
	FUNC0(sport->irq_tx, port);
	FUNC0(sport->irq_rx, port);
}