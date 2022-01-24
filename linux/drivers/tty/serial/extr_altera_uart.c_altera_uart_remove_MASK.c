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
struct uart_port {int /*<<< orphan*/  membase; scalar_t__ mapbase; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  altera_uart_driver ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct uart_port* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct uart_port*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct uart_port *port = FUNC1(pdev);

	if (port) {
		FUNC2(&altera_uart_driver, port);
		port->mapbase = 0;
		FUNC0(port->membase);
	}

	return 0;
}