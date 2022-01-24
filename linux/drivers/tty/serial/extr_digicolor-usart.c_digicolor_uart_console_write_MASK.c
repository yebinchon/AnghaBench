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
typedef  int u8 ;
struct uart_port {scalar_t__ membase; int /*<<< orphan*/  lock; } ;
struct console {size_t index; } ;

/* Variables and functions */
 scalar_t__ UA_STATUS ; 
 int UA_STATUS_TX_READY ; 
 struct uart_port** digicolor_ports ; 
 int /*<<< orphan*/  digicolor_uart_console_putchar ; 
 scalar_t__ oops_in_progress ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,char const*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct console *co, const char *c,
					 unsigned n)
{
	struct uart_port *port = digicolor_ports[co->index];
	u8 status;
	unsigned long flags;
	int locked = 1;

	if (oops_in_progress)
		locked = FUNC2(&port->lock, flags);
	else
		FUNC1(&port->lock, flags);

	FUNC4(port, c, n, digicolor_uart_console_putchar);

	if (locked)
		FUNC3(&port->lock, flags);

	/* Wait for transmitter to become empty */
	do {
		status = FUNC0(port->membase + UA_STATUS);
	} while ((status & UA_STATUS_TX_READY) == 0);
}