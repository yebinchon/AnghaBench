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
struct uart_8250_port {int bugs; int /*<<< orphan*/  ier; int /*<<< orphan*/  gpios; } ;

/* Variables and functions */
 int UART_BUG_NOMSR ; 
 int /*<<< orphan*/  UART_IER ; 
 int /*<<< orphan*/  UART_IER_MSI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct uart_8250_port* FUNC4 (struct uart_port*) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port)
{
	struct uart_8250_port *up = FUNC4(port);

	/* no MSR capabilities */
	if (up->bugs & UART_BUG_NOMSR)
		return;

	FUNC0(up->gpios);

	up->ier |= UART_IER_MSI;

	FUNC1(up);
	FUNC3(port, UART_IER, up->ier);
	FUNC2(up);
}