#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int uartclk; int irq; int /*<<< orphan*/  mapbase; TYPE_1__* dev; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_4__ {scalar_t__ of_node; } ;
struct platform_device {int id; TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct msm_port {unsigned long is_uartdm; void* clk; void* pclk; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int UART_NR ; 
 struct msm_port* FUNC2 (struct uart_port*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int) ; 
 void* FUNC6 (TYPE_1__*,char*) ; 
 struct uart_port* FUNC7 (int) ; 
 int /*<<< orphan*/  msm_uart_driver ; 
 int /*<<< orphan*/  msm_uart_next_id ; 
 int /*<<< orphan*/  msm_uartdm_table ; 
 int FUNC8 (scalar_t__,char*) ; 
 struct of_device_id* FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct uart_port*) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct uart_port*) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct msm_port *msm_port;
	struct resource *resource;
	struct uart_port *port;
	const struct of_device_id *id;
	int irq, line;

	if (pdev->dev.of_node)
		line = FUNC8(pdev->dev.of_node, "serial");
	else
		line = pdev->id;

	if (line < 0)
		line = FUNC3(&msm_uart_next_id) - 1;

	if (FUNC14(line < 0 || line >= UART_NR))
		return -ENXIO;

	FUNC5(&pdev->dev, "msm_serial: detected port #%d\n", line);

	port = FUNC7(line);
	port->dev = &pdev->dev;
	msm_port = FUNC2(port);

	id = FUNC9(msm_uartdm_table, &pdev->dev);
	if (id)
		msm_port->is_uartdm = (unsigned long)id->data;
	else
		msm_port->is_uartdm = 0;

	msm_port->clk = FUNC6(&pdev->dev, "core");
	if (FUNC0(msm_port->clk))
		return FUNC1(msm_port->clk);

	if (msm_port->is_uartdm) {
		msm_port->pclk = FUNC6(&pdev->dev, "iface");
		if (FUNC0(msm_port->pclk))
			return FUNC1(msm_port->pclk);
	}

	port->uartclk = FUNC4(msm_port->clk);
	FUNC5(&pdev->dev, "uartclk = %d\n", port->uartclk);

	resource = FUNC11(pdev, IORESOURCE_MEM, 0);
	if (FUNC14(!resource))
		return -ENXIO;
	port->mapbase = resource->start;

	irq = FUNC10(pdev, 0);
	if (FUNC14(irq < 0))
		return -ENXIO;
	port->irq = irq;

	FUNC12(pdev, port);

	return FUNC13(&msm_uart_driver, port);
}