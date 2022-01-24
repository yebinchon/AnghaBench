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
struct sirfsoc_uart_port {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sirfsoc_uart_port* FUNC2 (struct uart_port*) ; 

__attribute__((used)) static void FUNC3(struct uart_port *port, unsigned int state,
			      unsigned int oldstate)
{
	struct sirfsoc_uart_port *sirfport = FUNC2(port);
	if (!state)
		FUNC1(sirfport->clk);
	else
		FUNC0(sirfport->clk);
}