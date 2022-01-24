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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int fifosize; void* irq; int /*<<< orphan*/  uartclk; int /*<<< orphan*/ * dev; int /*<<< orphan*/ * ops; int /*<<< orphan*/  flags; int /*<<< orphan*/  iotype; int /*<<< orphan*/  mapsize; int /*<<< orphan*/  mapbase; int /*<<< orphan*/  membase; } ;
struct mps2_uart_port {int flags; TYPE_1__ port; void* tx_irq; void* rx_irq; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int UART_PORT_COMBINED_IRQ ; 
 int /*<<< orphan*/  UPF_BOOT_AUTOCONF ; 
 int /*<<< orphan*/  UPIO_MEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct resource*) ; 
 int /*<<< orphan*/  mps2_uart_pops ; 
 void* FUNC7 (struct platform_device*,int) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev,
			  struct mps2_uart_port *mps_port)
{
	struct resource *res;
	int ret;

	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	mps_port->port.membase = FUNC6(&pdev->dev, res);
	if (FUNC0(mps_port->port.membase))
		return FUNC1(mps_port->port.membase);

	mps_port->port.mapbase = res->start;
	mps_port->port.mapsize = FUNC9(res);
	mps_port->port.iotype = UPIO_MEM;
	mps_port->port.flags = UPF_BOOT_AUTOCONF;
	mps_port->port.fifosize = 1;
	mps_port->port.ops = &mps2_uart_pops;
	mps_port->port.dev = &pdev->dev;

	mps_port->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(mps_port->clk))
		return FUNC1(mps_port->clk);

	ret = FUNC4(mps_port->clk);
	if (ret)
		return ret;

	mps_port->port.uartclk = FUNC3(mps_port->clk);

	FUNC2(mps_port->clk);


	if (mps_port->flags & UART_PORT_COMBINED_IRQ) {
		mps_port->port.irq = FUNC7(pdev, 0);
	} else {
		mps_port->rx_irq = FUNC7(pdev, 0);
		mps_port->tx_irq = FUNC7(pdev, 1);
		mps_port->port.irq = FUNC7(pdev, 2);
	}

	return ret;
}