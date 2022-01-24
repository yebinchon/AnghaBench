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
struct uart_port {int /*<<< orphan*/  line; } ;
struct TYPE_4__ {int /*<<< orphan*/ * of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  buf; } ;
struct atmel_uart_port {int /*<<< orphan*/ * clk; TYPE_1__ rx_ring; int /*<<< orphan*/  tasklet_tx; int /*<<< orphan*/  tasklet_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  atmel_ports_in_use ; 
 int /*<<< orphan*/  atmel_uart ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct uart_port* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct atmel_uart_port* FUNC6 (struct uart_port*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct uart_port*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct uart_port *port = FUNC4(pdev);
	struct atmel_uart_port *atmel_port = FUNC6(port);
	int ret = 0;

	FUNC5(&atmel_port->tasklet_rx);
	FUNC5(&atmel_port->tasklet_tx);

	FUNC2(&pdev->dev, 0);

	ret = FUNC7(&atmel_uart, port);

	FUNC3(atmel_port->rx_ring.buf);

	/* "port" is allocated statically, so we shouldn't free it */

	FUNC0(port->line, atmel_ports_in_use);

	FUNC1(atmel_port->clk);
	atmel_port->clk = NULL;
	pdev->dev.of_node = NULL;

	return ret;
}