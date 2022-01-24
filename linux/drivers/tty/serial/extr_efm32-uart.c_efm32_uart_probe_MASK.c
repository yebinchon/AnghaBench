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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {unsigned int id; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int irq; int fifosize; unsigned int line; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; int /*<<< orphan*/  iotype; int /*<<< orphan*/  type; int /*<<< orphan*/  mapbase; int /*<<< orphan*/ * dev; } ;
struct efm32_uart_pdata {int dummy; } ;
struct efm32_uart_port {int txirq; TYPE_1__ port; struct efm32_uart_pdata pdata; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct efm32_uart_port**) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  PORT_EFMUART ; 
 int /*<<< orphan*/  UPF_BOOT_AUTOCONF ; 
 int /*<<< orphan*/  UPIO_MEM32 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 struct efm32_uart_pdata* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  efm32_uart_pops ; 
 struct efm32_uart_port** efm32_uart_ports ; 
 int FUNC3 (struct platform_device*,struct efm32_uart_port*) ; 
 int /*<<< orphan*/  efm32_uart_reg ; 
 int /*<<< orphan*/  FUNC4 (struct efm32_uart_port*) ; 
 struct efm32_uart_port* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct platform_device*,int) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct efm32_uart_port*) ; 
 int FUNC9 (struct resource*) ; 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct efm32_uart_port *efm_port;
	struct resource *res;
	unsigned int line;
	int ret;

	efm_port = FUNC5(sizeof(*efm_port), GFP_KERNEL);
	if (!efm_port) {
		FUNC1(&pdev->dev, "failed to allocate private data\n");
		return -ENOMEM;
	}

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		ret = -ENODEV;
		FUNC1(&pdev->dev, "failed to determine base address\n");
		goto err_get_base;
	}

	if (FUNC9(res) < 60) {
		ret = -EINVAL;
		FUNC1(&pdev->dev, "memory resource too small\n");
		goto err_too_small;
	}

	ret = FUNC6(pdev, 0);
	if (ret <= 0) {
		FUNC1(&pdev->dev, "failed to get rx irq\n");
		goto err_get_rxirq;
	}

	efm_port->port.irq = ret;

	ret = FUNC6(pdev, 1);
	if (ret <= 0)
		ret = efm_port->port.irq + 1;

	efm_port->txirq = ret;

	efm_port->port.dev = &pdev->dev;
	efm_port->port.mapbase = res->start;
	efm_port->port.type = PORT_EFMUART;
	efm_port->port.iotype = UPIO_MEM32;
	efm_port->port.fifosize = 2;
	efm_port->port.ops = &efm32_uart_pops;
	efm_port->port.flags = UPF_BOOT_AUTOCONF;

	ret = FUNC3(pdev, efm_port);
	if (ret > 0) {
		/* not created by device tree */
		const struct efm32_uart_pdata *pdata = FUNC2(&pdev->dev);

		efm_port->port.line = pdev->id;

		if (pdata)
			efm_port->pdata = *pdata;
	} else if (ret < 0)
		goto err_probe_dt;

	line = efm_port->port.line;

	if (line >= 0 && line < FUNC0(efm32_uart_ports))
		efm32_uart_ports[line] = efm_port;

	ret = FUNC10(&efm32_uart_reg, &efm_port->port);
	if (ret) {
		FUNC1(&pdev->dev, "failed to add port: %d\n", ret);

		if (line >= 0 && line < FUNC0(efm32_uart_ports))
			efm32_uart_ports[line] = NULL;
err_probe_dt:
err_get_rxirq:
err_too_small:
err_get_base:
		FUNC4(efm_port);
	} else {
		FUNC8(pdev, efm_port);
		FUNC1(&pdev->dev, "\\o/\n");
	}

	return ret;
}