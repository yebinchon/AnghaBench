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
struct uart_port {int /*<<< orphan*/  dev; } ;
struct uart_8250_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_EFR ; 
 int UART_EFR_ECB ; 
 int /*<<< orphan*/  UART_IER ; 
 int UART_IERX_SLEEP ; 
 int /*<<< orphan*/  UART_LCR ; 
 int UART_LCR_CONF_MODE_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_8250_port*,int /*<<< orphan*/ ,int) ; 
 struct uart_8250_port* FUNC5 (struct uart_port*) ; 

__attribute__((used)) static void FUNC6(struct uart_port *port, unsigned int state,
			 unsigned int oldstate)
{
	struct uart_8250_port *up = FUNC5(port);
	u8 efr;

	FUNC0(port->dev);
	FUNC4(up, UART_LCR, UART_LCR_CONF_MODE_B);
	efr = FUNC3(up, UART_EFR);
	FUNC4(up, UART_EFR, efr | UART_EFR_ECB);
	FUNC4(up, UART_LCR, 0);

	FUNC4(up, UART_IER, (state != 0) ? UART_IERX_SLEEP : 0);
	FUNC4(up, UART_LCR, UART_LCR_CONF_MODE_B);
	FUNC4(up, UART_EFR, efr);
	FUNC4(up, UART_LCR, 0);

	FUNC1(port->dev);
	FUNC2(port->dev);
}