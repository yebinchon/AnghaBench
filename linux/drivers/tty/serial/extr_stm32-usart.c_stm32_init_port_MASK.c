#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int irq; int /*<<< orphan*/  uartclk; int /*<<< orphan*/  lock; int /*<<< orphan*/  mapbase; int /*<<< orphan*/  membase; int /*<<< orphan*/  rs485_config; int /*<<< orphan*/  fifosize; int /*<<< orphan*/ * dev; int /*<<< orphan*/ * ops; int /*<<< orphan*/  flags; int /*<<< orphan*/  iotype; } ;
struct stm32_port {int wakeirq; int /*<<< orphan*/  clk; struct uart_port port; TYPE_2__* info; int /*<<< orphan*/  fifoen; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  has_fifo; scalar_t__ has_wakeup; int /*<<< orphan*/  fifosize; } ;
struct TYPE_4__ {TYPE_1__ cfg; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UPF_BOOT_AUTOCONF ; 
 int /*<<< orphan*/  UPIO_MEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct resource*) ; 
 void* FUNC7 (struct platform_device*,int) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stm32_config_rs485 ; 
 int /*<<< orphan*/  FUNC10 (struct uart_port*,struct platform_device*) ; 
 int /*<<< orphan*/  stm32_uart_ops ; 

__attribute__((used)) static int FUNC11(struct stm32_port *stm32port,
			  struct platform_device *pdev)
{
	struct uart_port *port = &stm32port->port;
	struct resource *res;
	int ret;

	port->iotype	= UPIO_MEM;
	port->flags	= UPF_BOOT_AUTOCONF;
	port->ops	= &stm32_uart_ops;
	port->dev	= &pdev->dev;
	port->fifosize	= stm32port->info->cfg.fifosize;

	ret = FUNC7(pdev, 0);
	if (ret <= 0)
		return ret ? : -ENODEV;
	port->irq = ret;

	port->rs485_config = stm32_config_rs485;

	FUNC10(port, pdev);

	if (stm32port->info->cfg.has_wakeup) {
		stm32port->wakeirq = FUNC7(pdev, 1);
		if (stm32port->wakeirq <= 0 && stm32port->wakeirq != -ENXIO)
			return stm32port->wakeirq ? : -ENODEV;
	}

	stm32port->fifoen = stm32port->info->cfg.has_fifo;

	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	port->membase = FUNC6(&pdev->dev, res);
	if (FUNC0(port->membase))
		return FUNC1(port->membase);
	port->mapbase = res->start;

	FUNC9(&port->lock);

	stm32port->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(stm32port->clk))
		return FUNC1(stm32port->clk);

	/* Ensure that clk rate is correct by enabling the clk */
	ret = FUNC4(stm32port->clk);
	if (ret)
		return ret;

	stm32port->port.uartclk = FUNC3(stm32port->clk);
	if (!stm32port->port.uartclk) {
		FUNC2(stm32port->clk);
		ret = -EINVAL;
	}

	return ret;
}