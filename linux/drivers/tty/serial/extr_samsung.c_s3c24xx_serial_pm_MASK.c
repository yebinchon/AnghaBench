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
struct uart_port {int /*<<< orphan*/  dev; } ;
struct s3c24xx_uart_port {unsigned int pm_level; int /*<<< orphan*/  baudclk; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*) ; 
 struct s3c24xx_uart_port* FUNC5 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct uart_port *port, unsigned int level,
			      unsigned int old)
{
	struct s3c24xx_uart_port *ourport = FUNC5(port);
	int timeout = 10000;

	ourport->pm_level = level;

	switch (level) {
	case 3:
		while (--timeout && !FUNC4(port))
			FUNC6(100);

		if (!FUNC0(ourport->baudclk))
			FUNC1(ourport->baudclk);

		FUNC1(ourport->clk);
		break;

	case 0:
		FUNC2(ourport->clk);

		if (!FUNC0(ourport->baudclk))
			FUNC2(ourport->baudclk);

		break;
	default:
		FUNC3(port->dev, "s3c24xx_serial: unknown pm %d\n", level);
	}
}