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
struct uart_port {int uartclk; } ;
struct uart_8250_port {int capabilities; scalar_t__ canary; struct uart_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_LCR ; 
 int UART_NATSEMI ; 
 int /*<<< orphan*/  FUNC0 (struct uart_8250_port*) ; 
 struct uart_8250_port* serial8250_ports ; 
 int /*<<< orphan*/  serial8250_reg ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct uart_port*) ; 

void FUNC3(int line)
{
	struct uart_8250_port *up = &serial8250_ports[line];
	struct uart_port *port = &up->port;

	up->canary = 0;

	if (up->capabilities & UART_NATSEMI) {
		/* Ensure it's still in high speed mode */
		FUNC1(port, UART_LCR, 0xE0);

		FUNC0(up);

		FUNC1(port, UART_LCR, 0);
		port->uartclk = 921600*16;
	}
	FUNC2(&serial8250_reg, port);
}