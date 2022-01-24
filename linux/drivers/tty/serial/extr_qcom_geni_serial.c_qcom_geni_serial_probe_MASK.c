#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int irq; TYPE_2__* dev; struct uart_driver* private_data; int /*<<< orphan*/  mapbase; } ;
struct uart_driver {int dummy; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_5__ {struct qcom_geni_serial_port* clk; int /*<<< orphan*/  wrapper; TYPE_2__* dev; } ;
struct qcom_geni_serial_port {int /*<<< orphan*/  handle_rx; int /*<<< orphan*/  tx_fifo_width; void* rx_fifo_depth; void* tx_fifo_depth; TYPE_1__ se; struct uart_port uport; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;

/* Variables and functions */
 void* DEF_FIFO_DEPTH_WORDS ; 
 int /*<<< orphan*/  DEF_FIFO_WIDTH_BITS ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct qcom_geni_serial_port*) ; 
 int FUNC1 (struct qcom_geni_serial_port*) ; 
 int /*<<< orphan*/  dev_attr_loopback ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 struct qcom_geni_serial_port* FUNC5 (TYPE_2__*,char*) ; 
 struct qcom_geni_serial_port* FUNC6 (int,int) ; 
 int /*<<< orphan*/  handle_rx_console ; 
 int /*<<< orphan*/  handle_rx_uart ; 
 int FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct qcom_geni_serial_port*) ; 
 struct uart_driver qcom_geni_console_driver ; 
 struct uart_driver qcom_geni_uart_driver ; 
 int FUNC12 (struct uart_driver*,struct uart_port*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	int ret = 0;
	int line = -1;
	struct qcom_geni_serial_port *port;
	struct uart_port *uport;
	struct resource *res;
	int irq;
	bool console = false;
	struct uart_driver *drv;

	if (FUNC8(pdev->dev.of_node, "qcom,geni-debug-uart"))
		console = true;

	if (console) {
		drv = &qcom_geni_console_driver;
		line = FUNC7(pdev->dev.of_node, "serial");
	} else {
		drv = &qcom_geni_uart_driver;
		line = FUNC7(pdev->dev.of_node, "hsuart");
	}

	port = FUNC6(line, console);
	if (FUNC0(port)) {
		FUNC2(&pdev->dev, "Invalid line %d\n", line);
		return FUNC1(port);
	}

	uport = &port->uport;
	/* Don't allow 2 drivers to access the same port */
	if (uport->private_data)
		return -ENODEV;

	uport->dev = &pdev->dev;
	port->se.dev = &pdev->dev;
	port->se.wrapper = FUNC3(pdev->dev.parent);
	port->se.clk = FUNC5(&pdev->dev, "se");
	if (FUNC0(port->se.clk)) {
		ret = FUNC1(port->se.clk);
		FUNC2(&pdev->dev, "Err getting SE Core clk %d\n", ret);
		return ret;
	}

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -EINVAL;
	uport->mapbase = res->start;

	port->tx_fifo_depth = DEF_FIFO_DEPTH_WORDS;
	port->rx_fifo_depth = DEF_FIFO_DEPTH_WORDS;
	port->tx_fifo_width = DEF_FIFO_WIDTH_BITS;

	irq = FUNC9(pdev, 0);
	if (irq < 0)
		return irq;
	uport->irq = irq;

	uport->private_data = drv;
	FUNC11(pdev, port);
	port->handle_rx = console ? handle_rx_console : handle_rx_uart;
	if (!console)
		FUNC4(uport->dev, &dev_attr_loopback);
	return FUNC12(drv, uport);
}