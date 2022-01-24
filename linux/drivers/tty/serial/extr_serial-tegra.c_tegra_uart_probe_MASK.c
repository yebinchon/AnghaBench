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
struct uart_port {int fifosize; int irq; int regshift; int /*<<< orphan*/  iotype; int /*<<< orphan*/  membase; int /*<<< orphan*/  mapbase; int /*<<< orphan*/  type; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; } ;
struct tegra_uart_port {int /*<<< orphan*/  rst; int /*<<< orphan*/  uart_clk; struct tegra_uart_chip_data const* cdata; struct uart_port uport; } ;
struct tegra_uart_chip_data {int dummy; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct of_device_id {struct tegra_uart_chip_data* data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PORT_TEGRA ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UPIO_MEM32 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 struct tegra_uart_port* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 struct of_device_id* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct tegra_uart_port*) ; 
 int /*<<< orphan*/  tegra_uart_driver ; 
 int /*<<< orphan*/  tegra_uart_of_match ; 
 int /*<<< orphan*/  tegra_uart_ops ; 
 int FUNC11 (struct platform_device*,struct tegra_uart_port*) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct uart_port*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct tegra_uart_port *tup;
	struct uart_port *u;
	struct resource *resource;
	int ret;
	const struct tegra_uart_chip_data *cdata;
	const struct of_device_id *match;

	match = FUNC7(tegra_uart_of_match, &pdev->dev);
	if (!match) {
		FUNC2(&pdev->dev, "Error: No device match found\n");
		return -ENODEV;
	}
	cdata = match->data;

	tup = FUNC5(&pdev->dev, sizeof(*tup), GFP_KERNEL);
	if (!tup) {
		FUNC2(&pdev->dev, "Failed to allocate memory for tup\n");
		return -ENOMEM;
	}

	ret = FUNC11(pdev, tup);
	if (ret < 0)
		return ret;

	u = &tup->uport;
	u->dev = &pdev->dev;
	u->ops = &tegra_uart_ops;
	u->type = PORT_TEGRA;
	u->fifosize = 32;
	tup->cdata = cdata;

	FUNC10(pdev, tup);
	resource = FUNC9(pdev, IORESOURCE_MEM, 0);
	if (!resource) {
		FUNC2(&pdev->dev, "No IO memory resource\n");
		return -ENODEV;
	}

	u->mapbase = resource->start;
	u->membase = FUNC4(&pdev->dev, resource);
	if (FUNC0(u->membase))
		return FUNC1(u->membase);

	tup->uart_clk = FUNC3(&pdev->dev, NULL);
	if (FUNC0(tup->uart_clk)) {
		FUNC2(&pdev->dev, "Couldn't get the clock\n");
		return FUNC1(tup->uart_clk);
	}

	tup->rst = FUNC6(&pdev->dev, "serial");
	if (FUNC0(tup->rst)) {
		FUNC2(&pdev->dev, "Couldn't get the reset\n");
		return FUNC1(tup->rst);
	}

	u->iotype = UPIO_MEM32;
	ret = FUNC8(pdev, 0);
	if (ret < 0)
		return ret;
	u->irq = ret;
	u->regshift = 2;
	ret = FUNC12(&tegra_uart_driver, u);
	if (ret < 0) {
		FUNC2(&pdev->dev, "Failed to add uart port, err %d\n", ret);
		return ret;
	}
	return ret;
}