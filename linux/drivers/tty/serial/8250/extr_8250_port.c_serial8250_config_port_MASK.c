#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uart_port {scalar_t__ iotype; scalar_t__ type; } ;
struct TYPE_3__ {size_t type; } ;
struct uart_8250_port {scalar_t__ cur_iotype; TYPE_1__ port; int /*<<< orphan*/  fcr; int /*<<< orphan*/  bugs; } ;
struct TYPE_4__ {int /*<<< orphan*/  fcr; } ;

/* Variables and functions */
 scalar_t__ PORT_16550A ; 
 scalar_t__ PORT_TEGRA ; 
 scalar_t__ PORT_UNKNOWN ; 
 int /*<<< orphan*/  UART_BUG_NOMSR ; 
 int UART_CONFIG_IRQ ; 
 int UART_CONFIG_TYPE ; 
 scalar_t__ UPIO_AU ; 
 int /*<<< orphan*/  FUNC0 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_8250_port*) ; 
 int FUNC4 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*) ; 
 TYPE_2__* uart_config ; 
 struct uart_8250_port* FUNC6 (struct uart_port*) ; 

__attribute__((used)) static void FUNC7(struct uart_port *port, int flags)
{
	struct uart_8250_port *up = FUNC6(port);
	int ret;

	/*
	 * Find the region that we can probe for.  This in turn
	 * tells us whether we can probe for the type of port.
	 */
	ret = FUNC4(up);
	if (ret < 0)
		return;

	if (port->iotype != up->cur_iotype)
		FUNC5(port);

	if (flags & UART_CONFIG_TYPE)
		FUNC0(up);

	/* if access method is AU, it is a 16550 with a quirk */
	if (port->type == PORT_16550A && port->iotype == UPIO_AU)
		up->bugs |= UART_BUG_NOMSR;

	/* HW bugs may trigger IRQ while IIR == NO_INT */
	if (port->type == PORT_TEGRA)
		up->bugs |= UART_BUG_NOMSR;

	if (port->type != PORT_UNKNOWN && flags & UART_CONFIG_IRQ)
		FUNC1(up);

	if (port->type == PORT_UNKNOWN)
		FUNC3(up);

	FUNC2(up);
	up->fcr = uart_config[up->port.type].fcr;
}