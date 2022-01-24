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
struct uart_port {int /*<<< orphan*/  irq; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_IR_REG ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct uart_port *port)
{
	unsigned long flags;

	FUNC4(&port->lock, flags);
	FUNC2(port, 0, UART_IR_REG);
	FUNC5(&port->lock, flags);

	FUNC0(port);
	FUNC1(port);
	FUNC3(port->irq, port);
}