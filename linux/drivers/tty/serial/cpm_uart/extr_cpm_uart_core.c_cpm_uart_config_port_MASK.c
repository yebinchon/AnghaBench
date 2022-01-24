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
struct uart_port {int /*<<< orphan*/  type; int /*<<< orphan*/  line; } ;

/* Variables and functions */
 int /*<<< orphan*/  PORT_CPM ; 
 int UART_CONFIG_TYPE ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port, int flags)
{
	FUNC1("CPM uart[%d]:config_port\n", port->line);

	if (flags & UART_CONFIG_TYPE) {
		port->type = PORT_CPM;
		FUNC0(port);
	}
}