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
struct uart_port {int irq; int fifosize; int flags; int line; TYPE_1__* dev; int /*<<< orphan*/ * ops; int /*<<< orphan*/  iotype; int /*<<< orphan*/  uartclk; int /*<<< orphan*/  membase; void* private_data; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 size_t RX ; 
 size_t TX ; 
 int UPF_BOOT_AUTOCONF ; 
 int UPF_SPD_VHI ; 
 int /*<<< orphan*/  UPIO_MEM32 ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 int FUNC4 (struct clk*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,...) ; 
 struct clk* FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int** mlb_usio_irq ; 
 int /*<<< orphan*/  mlb_usio_ops ; 
 struct uart_port* mlb_usio_ports ; 
 int /*<<< orphan*/  mlb_usio_uart_driver ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC9 (struct platform_device*,char*) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct resource*) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct uart_port*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct clk *clk = FUNC6(&pdev->dev, NULL);
	struct uart_port *port;
	struct resource *res;
	int index = 0;
	int ret;

	if (FUNC0(clk)) {
		FUNC5(&pdev->dev, "Missing clock\n");
		return FUNC1(clk);
	}
	ret = FUNC4(clk);
	if (ret) {
		FUNC5(&pdev->dev, "Clock enable failed: %d\n", ret);
		return ret;
	}
	FUNC8(pdev->dev.of_node, "index", &index);
	port = &mlb_usio_ports[index];

	port->private_data = (void *)clk;
	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	if (res == NULL) {
		FUNC5(&pdev->dev, "Missing regs\n");
		ret = -ENODEV;
		goto failed;
	}
	port->membase = FUNC7(&pdev->dev, res->start,
				FUNC11(res));

	ret = FUNC9(pdev, "rx");
	mlb_usio_irq[index][RX] = ret;

	ret = FUNC9(pdev, "tx");
	mlb_usio_irq[index][TX] = ret;

	port->irq = mlb_usio_irq[index][RX];
	port->uartclk = FUNC3(clk);
	port->fifosize = 128;
	port->iotype = UPIO_MEM32;
	port->flags = UPF_BOOT_AUTOCONF | UPF_SPD_VHI;
	port->line = index;
	port->ops = &mlb_usio_ops;
	port->dev = &pdev->dev;

	ret = FUNC12(&mlb_usio_uart_driver, port);
	if (ret) {
		FUNC5(&pdev->dev, "Adding port failed: %d\n", ret);
		goto failed;
	}
	return 0;

failed:
	FUNC2(clk);

	return ret;
}