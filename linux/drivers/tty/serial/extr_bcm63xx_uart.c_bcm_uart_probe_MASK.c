#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int fifosize; int uartclk; size_t line; struct clk* membase; TYPE_1__* dev; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; int /*<<< orphan*/  irq; int /*<<< orphan*/  iotype; int /*<<< orphan*/  mapbase; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_3__ {scalar_t__ of_node; } ;
struct platform_device {size_t id; TYPE_1__ dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 size_t BCM63XX_NR_UARTS ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  UPF_BOOT_AUTOCONF ; 
 int /*<<< orphan*/  UPIO_MEM ; 
 int /*<<< orphan*/  bcm_uart_driver ; 
 int /*<<< orphan*/  bcm_uart_ops ; 
 struct clk* FUNC2 (TYPE_1__*,char*) ; 
 int FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*) ; 
 struct clk* FUNC5 (TYPE_1__*,struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*,int /*<<< orphan*/ ,int) ; 
 void* FUNC7 (scalar_t__,char*) ; 
 struct clk* FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct uart_port*) ; 
 struct uart_port* ports ; 
 int FUNC11 (int /*<<< orphan*/ *,struct uart_port*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct resource *res_mem, *res_irq;
	struct uart_port *port;
	struct clk *clk;
	int ret;

	if (pdev->dev.of_node) {
		pdev->id = FUNC7(pdev->dev.of_node, "serial");

		if (pdev->id < 0)
			pdev->id = FUNC7(pdev->dev.of_node, "uart");
	}

	if (pdev->id < 0 || pdev->id >= BCM63XX_NR_UARTS)
		return -EINVAL;

	port = &ports[pdev->id];
	if (port->membase)
		return -EBUSY;
	FUNC6(port, 0, sizeof(*port));

	res_mem = FUNC9(pdev, IORESOURCE_MEM, 0);
	if (!res_mem)
		return -ENODEV;

	port->mapbase = res_mem->start;
	port->membase = FUNC5(&pdev->dev, res_mem);
	if (FUNC0(port->membase))
		return FUNC1(port->membase);

	res_irq = FUNC9(pdev, IORESOURCE_IRQ, 0);
	if (!res_irq)
		return -ENODEV;

	clk = FUNC2(&pdev->dev, "refclk");
	if (FUNC0(clk) && pdev->dev.of_node)
		clk = FUNC8(pdev->dev.of_node, 0);

	if (FUNC0(clk))
		return -ENODEV;

	port->iotype = UPIO_MEM;
	port->irq = res_irq->start;
	port->ops = &bcm_uart_ops;
	port->flags = UPF_BOOT_AUTOCONF;
	port->dev = &pdev->dev;
	port->fifosize = 16;
	port->uartclk = FUNC3(clk) / 2;
	port->line = pdev->id;
	FUNC4(clk);

	ret = FUNC11(&bcm_uart_driver, port);
	if (ret) {
		ports[pdev->id].membase = NULL;
		return ret;
	}
	FUNC10(pdev, port);
	return 0;
}