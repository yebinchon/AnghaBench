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
struct uart_port {int /*<<< orphan*/  irq; int /*<<< orphan*/  uartclk; } ;
struct TYPE_2__ {int /*<<< orphan*/  location; } ;
struct efm32_uart_port {int /*<<< orphan*/  clk; int /*<<< orphan*/  txirq; TYPE_1__ pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int /*<<< orphan*/  UARTn_CMD ; 
 int UARTn_CMD_RXEN ; 
 int /*<<< orphan*/  UARTn_IEN ; 
 int UARTn_IF_RXDATAV ; 
 int UARTn_IF_RXOF ; 
 int /*<<< orphan*/  UARTn_ROUTE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int UARTn_ROUTE_RXPEN ; 
 int UARTn_ROUTE_TXPEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  efm32_uart_rxirq ; 
 int /*<<< orphan*/  efm32_uart_txirq ; 
 int /*<<< orphan*/  FUNC4 (struct efm32_uart_port*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct efm32_uart_port*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct efm32_uart_port*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct efm32_uart_port*) ; 
 struct efm32_uart_port* FUNC8 (struct uart_port*) ; 

__attribute__((used)) static int FUNC9(struct uart_port *port)
{
	struct efm32_uart_port *efm_port = FUNC8(port);
	int ret;

	ret = FUNC2(efm_port->clk);
	if (ret) {
		FUNC5(efm_port, "failed to enable clk\n");
		goto err_clk_enable;
	}
	port->uartclk = FUNC3(efm_port->clk);

	/* Enable pins at configured location */
	FUNC4(efm_port,
			FUNC0(efm_port->pdata.location) |
			UARTn_ROUTE_RXPEN | UARTn_ROUTE_TXPEN,
			UARTn_ROUTE);

	ret = FUNC7(port->irq, efm32_uart_rxirq, 0,
			DRIVER_NAME, efm_port);
	if (ret) {
		FUNC5(efm_port, "failed to register rxirq\n");
		goto err_request_irq_rx;
	}

	/* disable all irqs */
	FUNC4(efm_port, 0, UARTn_IEN);

	ret = FUNC7(efm_port->txirq, efm32_uart_txirq, 0,
			DRIVER_NAME, efm_port);
	if (ret) {
		FUNC5(efm_port, "failed to register txirq\n");
		FUNC6(port->irq, efm_port);
err_request_irq_rx:

		FUNC1(efm_port->clk);
	} else {
		FUNC4(efm_port,
				UARTn_IF_RXDATAV | UARTn_IF_RXOF, UARTn_IEN);
		FUNC4(efm_port, UARTn_CMD_RXEN, UARTn_CMD);
	}

err_clk_enable:
	return ret;
}