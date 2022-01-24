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
struct uart_port {scalar_t__ mapbase; struct cdns_uart* private_data; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct cdns_uart {scalar_t__ id; int /*<<< orphan*/  cdns_uart_driver; int /*<<< orphan*/  pclk; int /*<<< orphan*/  uartclk; int /*<<< orphan*/  clk_rate_change_nb; } ;

/* Variables and functions */
 scalar_t__ MAX_UART_INSTANCES ; 
 int /*<<< orphan*/  bitmap ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  bitmap_lock ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct uart_port* console_port ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct uart_port* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ uartps_major ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct uart_port *port = FUNC7(pdev);
	struct cdns_uart *cdns_uart_data = port->private_data;
	int rc;

	/* Remove the cdns_uart port from the serial core */
#ifdef CONFIG_COMMON_CLK
	clk_notifier_unregister(cdns_uart_data->uartclk,
			&cdns_uart_data->clk_rate_change_nb);
#endif
	rc = FUNC11(cdns_uart_data->cdns_uart_driver, port);
	port->mapbase = 0;
	FUNC5(&bitmap_lock);
	if (cdns_uart_data->id < MAX_UART_INSTANCES)
		FUNC1(cdns_uart_data->id, bitmap);
	FUNC6(&bitmap_lock);
	FUNC2(cdns_uart_data->uartclk);
	FUNC2(cdns_uart_data->pclk);
	FUNC8(&pdev->dev);
	FUNC10(&pdev->dev);
	FUNC9(&pdev->dev);
	FUNC4(&pdev->dev, false);

#ifdef CONFIG_SERIAL_XILINX_PS_UART_CONSOLE
	if (console_port == port)
		console_port = NULL;
#endif

	/* If this is last instance major number should be initialized */
	FUNC5(&bitmap_lock);
	if (FUNC0(bitmap, MAX_UART_INSTANCES))
		uartps_major = 0;
	FUNC6(&bitmap_lock);

	FUNC12(cdns_uart_data->cdns_uart_driver);
	return rc;
}