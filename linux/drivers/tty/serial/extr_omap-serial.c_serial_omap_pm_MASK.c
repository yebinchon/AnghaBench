#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  line; int /*<<< orphan*/  dev; } ;
struct uart_omap_port {int /*<<< orphan*/  dev; TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_EFR ; 
 unsigned char UART_EFR_ECB ; 
 int /*<<< orphan*/  UART_IER ; 
 unsigned char UART_IERX_SLEEP ; 
 int /*<<< orphan*/  UART_LCR ; 
 unsigned char UART_LCR_CONF_MODE_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC4 (struct uart_omap_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_omap_port*,int /*<<< orphan*/ ,unsigned char) ; 
 struct uart_omap_port* FUNC6 (struct uart_port*) ; 

__attribute__((used)) static void
FUNC7(struct uart_port *port, unsigned int state,
	       unsigned int oldstate)
{
	struct uart_omap_port *up = FUNC6(port);
	unsigned char efr;

	FUNC0(up->port.dev, "serial_omap_pm+%d\n", up->port.line);

	FUNC1(up->dev);
	FUNC5(up, UART_LCR, UART_LCR_CONF_MODE_B);
	efr = FUNC4(up, UART_EFR);
	FUNC5(up, UART_EFR, efr | UART_EFR_ECB);
	FUNC5(up, UART_LCR, 0);

	FUNC5(up, UART_IER, (state != 0) ? UART_IERX_SLEEP : 0);
	FUNC5(up, UART_LCR, UART_LCR_CONF_MODE_B);
	FUNC5(up, UART_EFR, efr);
	FUNC5(up, UART_LCR, 0);

	FUNC2(up->dev);
	FUNC3(up->dev);
}