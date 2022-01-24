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
struct uart_8250_port {int /*<<< orphan*/  acr; } ;

/* Variables and functions */
 scalar_t__ PORT_16C950 ; 
 int /*<<< orphan*/  UART_ACR ; 
 int /*<<< orphan*/  UART_ACR_TXDIS ; 
 int /*<<< orphan*/  FUNC0 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_8250_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct uart_8250_port* FUNC4 (struct uart_port*) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port)
{
	struct uart_8250_port *up = FUNC4(port);

	FUNC1(up);
	FUNC0(up);

	/*
	 * We really want to stop the transmitter from sending.
	 */
	if (port->type == PORT_16C950) {
		up->acr |= UART_ACR_TXDIS;
		FUNC3(up, UART_ACR, up->acr);
	}
	FUNC2(up);
}