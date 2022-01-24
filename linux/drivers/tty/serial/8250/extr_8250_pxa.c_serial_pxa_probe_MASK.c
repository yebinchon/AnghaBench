#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int line; int regshift; int fifosize; int flags; struct pxa8250_data* private_data; int /*<<< orphan*/  pm; int /*<<< orphan*/  uartclk; TYPE_2__* dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  mapbase; int /*<<< orphan*/  iotype; int /*<<< orphan*/  type; } ;
struct uart_8250_port {int /*<<< orphan*/  dl_write; TYPE_1__ port; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct pxa8250_data {int line; int /*<<< orphan*/  clk; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PORT_XSCALE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int UPF_IOREMAP ; 
 int UPF_SKIP_TEST ; 
 int /*<<< orphan*/  UPIO_MEM32 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 struct pxa8250_data* FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct pxa8250_data*) ; 
 int FUNC10 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  serial_pxa_dl_write ; 
 int /*<<< orphan*/  serial_pxa_pm ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct uart_8250_port uart = {};
	struct pxa8250_data *data;
	struct resource *mmres, *irqres;
	int ret;

	mmres = FUNC8(pdev, IORESOURCE_MEM, 0);
	irqres = FUNC8(pdev, IORESOURCE_IRQ, 0);
	if (!mmres || !irqres)
		return -ENODEV;

	data = FUNC6(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(data->clk))
		return FUNC1(data->clk);

	ret = FUNC3(data->clk);
	if (ret)
		return ret;

	ret = FUNC7(pdev->dev.of_node, "serial");
	if (ret >= 0)
		uart.port.line = ret;

	uart.port.type = PORT_XSCALE;
	uart.port.iotype = UPIO_MEM32;
	uart.port.mapbase = mmres->start;
	uart.port.regshift = 2;
	uart.port.irq = irqres->start;
	uart.port.fifosize = 64;
	uart.port.flags = UPF_IOREMAP | UPF_SKIP_TEST;
	uart.port.dev = &pdev->dev;
	uart.port.uartclk = FUNC2(data->clk);
	uart.port.pm = serial_pxa_pm;
	uart.port.private_data = data;
	uart.dl_write = serial_pxa_dl_write;

	ret = FUNC10(&uart);
	if (ret < 0)
		goto err_clk;

	data->line = ret;

	FUNC9(pdev, data);

	return 0;

 err_clk:
	FUNC4(data->clk);
	return ret;
}