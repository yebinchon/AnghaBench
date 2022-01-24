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
struct uart_port {int /*<<< orphan*/  membase; int /*<<< orphan*/  dev; int /*<<< orphan*/  mapbase; } ;
struct TYPE_2__ {int /*<<< orphan*/  membase; } ;
struct efm32_uart_port {int /*<<< orphan*/  clk; TYPE_1__ port; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct efm32_uart_port*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct efm32_uart_port* FUNC8 (struct uart_port*) ; 

__attribute__((used)) static int FUNC9(struct uart_port *port)
{
	struct efm32_uart_port *efm_port = FUNC8(port);
	int ret;

	port->membase = FUNC6(port->mapbase, 60);
	if (!efm_port->port.membase) {
		ret = -ENOMEM;
		FUNC5(efm_port, "failed to remap\n");
		goto err_ioremap;
	}

	efm_port->clk = FUNC2(port->dev, NULL);
	if (FUNC0(efm_port->clk)) {
		ret = FUNC1(efm_port->clk);
		FUNC5(efm_port, "failed to get clock\n");
		goto err_clk_get;
	}

	ret = FUNC3(efm_port->clk);
	if (ret) {
		FUNC4(efm_port->clk);
err_clk_get:

		FUNC7(port->membase);
err_ioremap:
		return ret;
	}
	return 0;
}