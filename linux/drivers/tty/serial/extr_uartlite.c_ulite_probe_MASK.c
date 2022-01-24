#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct uartlite_data {int /*<<< orphan*/ * clk; TYPE_1__* ulite_uart_driver; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_15__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {int id; TYPE_2__ dev; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_14__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UART_AUTOSUSPEND_TIMEOUT ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*,char*) ; 
 struct uartlite_data* FUNC7 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int FUNC18 (TYPE_1__*) ; 
 int FUNC19 (TYPE_2__*,int,int /*<<< orphan*/ ,int,struct uartlite_data*) ; 
 TYPE_1__ ulite_uart_driver ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct resource *res;
	struct uartlite_data *pdata;
	int irq, ret;
	int id = pdev->id;
#ifdef CONFIG_OF
	const __be32 *prop;

	prop = of_get_property(pdev->dev.of_node, "port-number", NULL);
	if (prop)
		id = be32_to_cpup(prop);
#endif
	if (id < 0) {
		/* Look for a serialN alias */
		id = FUNC8(pdev->dev.of_node, "serial");
		if (id < 0)
			id = 0;
	}

	if (!ulite_uart_driver.state) {
		FUNC4(&pdev->dev, "uartlite: calling uart_register_driver()\n");
		ret = FUNC18(&ulite_uart_driver);
		if (ret < 0) {
			FUNC5(&pdev->dev, "Failed to register driver\n");
			return ret;
		}
	}

	pdata = FUNC7(&pdev->dev, sizeof(struct uartlite_data),
			     GFP_KERNEL);
	if (!pdata)
		return -ENOMEM;

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENODEV;

	irq = FUNC10(pdev, 0);
	if (irq <= 0)
		return -ENXIO;

	pdata->clk = FUNC6(&pdev->dev, "s_axi_aclk");
	if (FUNC0(pdata->clk)) {
		if (FUNC1(pdata->clk) != -ENOENT)
			return FUNC1(pdata->clk);

		/*
		 * Clock framework support is optional, continue on
		 * anyways if we don't find a matching clock.
		 */
		pdata->clk = NULL;
	}

	pdata->ulite_uart_driver = &ulite_uart_driver;
	ret = FUNC3(pdata->clk);
	if (ret) {
		FUNC5(&pdev->dev, "Failed to prepare clock\n");
		return ret;
	}

	FUNC17(&pdev->dev);
	FUNC16(&pdev->dev, UART_AUTOSUSPEND_TIMEOUT);
	FUNC15(&pdev->dev);
	FUNC12(&pdev->dev);

	ret = FUNC19(&pdev->dev, id, res->start, irq, pdata);

	FUNC13(&pdev->dev);
	FUNC14(&pdev->dev);

	return ret;
}