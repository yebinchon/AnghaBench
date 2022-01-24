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
struct TYPE_2__ {int fifosize; int flags; int line; int /*<<< orphan*/  membase; int /*<<< orphan*/  uartclk; int /*<<< orphan*/ * dev; int /*<<< orphan*/ * ops; int /*<<< orphan*/  irq; int /*<<< orphan*/  mapbase; int /*<<< orphan*/  iotype; int /*<<< orphan*/  type; } ;
struct uart_pxa_port {int /*<<< orphan*/  clk; TYPE_1__ port; int /*<<< orphan*/  name; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int id; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct uart_pxa_port**) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PORT_PXA ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ PXA_NAME_LEN ; 
 int UPF_BOOT_AUTOCONF ; 
 int UPF_IOREMAP ; 
 int /*<<< orphan*/  UPIO_MEM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct uart_pxa_port*) ; 
 struct uart_pxa_port* FUNC11 (int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct uart_pxa_port*) ; 
 int /*<<< orphan*/  FUNC14 (struct resource*) ; 
 int /*<<< orphan*/  serial_pxa_pops ; 
 struct uart_pxa_port** serial_pxa_ports ; 
 int FUNC15 (struct platform_device*,struct uart_pxa_port*) ; 
 int /*<<< orphan*/  serial_pxa_reg ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *dev)
{
	struct uart_pxa_port *sport;
	struct resource *mmres, *irqres;
	int ret;

	mmres = FUNC12(dev, IORESOURCE_MEM, 0);
	irqres = FUNC12(dev, IORESOURCE_IRQ, 0);
	if (!mmres || !irqres)
		return -ENODEV;

	sport = FUNC11(sizeof(struct uart_pxa_port), GFP_KERNEL);
	if (!sport)
		return -ENOMEM;

	sport->clk = FUNC3(&dev->dev, NULL);
	if (FUNC1(sport->clk)) {
		ret = FUNC2(sport->clk);
		goto err_free;
	}

	ret = FUNC5(sport->clk);
	if (ret) {
		FUNC6(sport->clk);
		goto err_free;
	}

	sport->port.type = PORT_PXA;
	sport->port.iotype = UPIO_MEM;
	sport->port.mapbase = mmres->start;
	sport->port.irq = irqres->start;
	sport->port.fifosize = 64;
	sport->port.ops = &serial_pxa_pops;
	sport->port.dev = &dev->dev;
	sport->port.flags = UPF_IOREMAP | UPF_BOOT_AUTOCONF;
	sport->port.uartclk = FUNC4(sport->clk);

	ret = FUNC15(dev, sport);
	if (ret > 0)
		sport->port.line = dev->id;
	else if (ret < 0)
		goto err_clk;
	if (sport->port.line >= FUNC0(serial_pxa_ports)) {
		FUNC8(&dev->dev, "serial%d out of range\n", sport->port.line);
		ret = -EINVAL;
		goto err_clk;
	}
	FUNC16(sport->name, PXA_NAME_LEN - 1, "UART%d", sport->port.line + 1);

	sport->port.membase = FUNC9(mmres->start, FUNC14(mmres));
	if (!sport->port.membase) {
		ret = -ENOMEM;
		goto err_clk;
	}

	serial_pxa_ports[sport->port.line] = sport;

	FUNC17(&serial_pxa_reg, &sport->port);
	FUNC13(dev, sport);

	return 0;

 err_clk:
	FUNC7(sport->clk);
	FUNC6(sport->clk);
 err_free:
	FUNC10(sport);
	return ret;
}