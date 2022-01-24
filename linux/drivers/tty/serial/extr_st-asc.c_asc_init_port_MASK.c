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
struct uart_port {scalar_t__ uartclk; int /*<<< orphan*/  lock; int /*<<< orphan*/  mapbase; int /*<<< orphan*/ * membase; int /*<<< orphan*/  irq; int /*<<< orphan*/ * dev; int /*<<< orphan*/  fifosize; int /*<<< orphan*/ * ops; int /*<<< orphan*/  flags; int /*<<< orphan*/  iotype; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct asc_port {int /*<<< orphan*/ ** states; int /*<<< orphan*/ * pinctrl; int /*<<< orphan*/ * clk; struct uart_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASC_FIFO_SIZE ; 
 size_t DEFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 size_t NO_HW_FLOWCTRL ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UPF_BOOT_AUTOCONF ; 
 int /*<<< orphan*/  UPIO_MEM ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  asc_uart_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,struct resource*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct asc_port *ascport,
			  struct platform_device *pdev)
{
	struct uart_port *port = &ascport->port;
	struct resource *res;
	int ret;

	port->iotype	= UPIO_MEM;
	port->flags	= UPF_BOOT_AUTOCONF;
	port->ops	= &asc_uart_ops;
	port->fifosize	= ASC_FIFO_SIZE;
	port->dev	= &pdev->dev;
	port->irq	= FUNC11(pdev, 0);

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	port->membase = FUNC8(&pdev->dev, res);
	if (FUNC0(port->membase))
		return FUNC1(port->membase);
	port->mapbase = res->start;

	FUNC13(&port->lock);

	ascport->clk = FUNC7(&pdev->dev, NULL);

	if (FUNC2(FUNC0(ascport->clk)))
		return -EINVAL;
	/* ensure that clk rate is correct by enabling the clk */
	FUNC5(ascport->clk);
	ascport->port.uartclk = FUNC4(ascport->clk);
	FUNC2(ascport->port.uartclk == 0);
	FUNC3(ascport->clk);

	ascport->pinctrl = FUNC9(&pdev->dev);
	if (FUNC0(ascport->pinctrl)) {
		ret = FUNC1(ascport->pinctrl);
		FUNC6(&pdev->dev, "Failed to get Pinctrl: %d\n", ret);
		return ret;
	}

	ascport->states[DEFAULT] =
		FUNC10(ascport->pinctrl, "default");
	if (FUNC0(ascport->states[DEFAULT])) {
		ret = FUNC1(ascport->states[DEFAULT]);
		FUNC6(&pdev->dev,
			"Failed to look up Pinctrl state 'default': %d\n", ret);
		return ret;
	}

	/* "no-hw-flowctrl" state is optional */
	ascport->states[NO_HW_FLOWCTRL] =
		FUNC10(ascport->pinctrl, "no-hw-flowctrl");
	if (FUNC0(ascport->states[NO_HW_FLOWCTRL]))
		ascport->states[NO_HW_FLOWCTRL] = NULL;

	return 0;
}