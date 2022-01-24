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
struct uart_port {int dummy; } ;
struct ltq_uart_port {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ltq_uart_port* FUNC3 (struct uart_port*) ; 

__attribute__((used)) static void
FUNC4(struct uart_port *port)
{
	unsigned long flags;
	struct ltq_uart_port *ltq_port = FUNC3(port);

	FUNC1(&ltq_port->lock, flags);
	FUNC0(port);
	FUNC2(&ltq_port->lock, flags);
	return;
}