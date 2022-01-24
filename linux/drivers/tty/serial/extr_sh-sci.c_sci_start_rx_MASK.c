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
struct uart_port {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ PORT_SCIFA ; 
 scalar_t__ PORT_SCIFB ; 
 int /*<<< orphan*/  SCSCR ; 
 unsigned short SCSCR_RDRQE ; 
 unsigned short FUNC0 (struct uart_port*) ; 
 unsigned short FUNC1 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int /*<<< orphan*/ ,unsigned short) ; 

__attribute__((used)) static void FUNC3(struct uart_port *port)
{
	unsigned short ctrl;

	ctrl = FUNC1(port, SCSCR) | FUNC0(port);

	if (port->type == PORT_SCIFA || port->type == PORT_SCIFB)
		ctrl &= ~SCSCR_RDRQE;

	FUNC2(port, SCSCR, ctrl);
}