#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_12__ {struct device_node* of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_11__ {int irq; int fifosize; int flags; int /*<<< orphan*/ * ops; int /*<<< orphan*/  uartclk; int /*<<< orphan*/  type; int /*<<< orphan*/  mapbase; int /*<<< orphan*/  iotype; TYPE_4__* dev; int /*<<< orphan*/  line; struct clk* membase; } ;
struct clps711x_port {int rx_irq; int tx_enabled; TYPE_1__ port; struct clk* syscon; struct clk* gpios; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  PORT_CLPS711X ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  SYSCON_OFFSET ; 
 int /*<<< orphan*/  SYSCON_UARTEN ; 
 int UPF_FIXED_TYPE ; 
 int UPF_SKIP_TEST ; 
 int /*<<< orphan*/  UPIO_MEM32 ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  clps711x_uart ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 struct clk* FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 struct clk* FUNC5 (TYPE_4__*,struct resource*) ; 
 struct clps711x_port* FUNC6 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 struct clk* FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*,char*) ; 
 void* FUNC10 (struct platform_device*,int) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct clps711x_port*) ; 
 int /*<<< orphan*/  FUNC13 (struct clk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk* FUNC14 (struct device_node*,char*) ; 
 int FUNC15 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  uart_clps711x_int_rx ; 
 int /*<<< orphan*/  uart_clps711x_int_tx ; 
 int /*<<< orphan*/  uart_clps711x_ops ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct clps711x_port *s;
	struct resource *res;
	struct clk *uart_clk;
	int irq, ret;

	s = FUNC6(&pdev->dev, sizeof(*s), GFP_KERNEL);
	if (!s)
		return -ENOMEM;

	uart_clk = FUNC4(&pdev->dev, NULL);
	if (FUNC0(uart_clk))
		return FUNC1(uart_clk);

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	s->port.membase = FUNC5(&pdev->dev, res);
	if (FUNC0(s->port.membase))
		return FUNC1(s->port.membase);

	irq = FUNC10(pdev, 0);
	if (irq < 0)
		return irq;
	s->port.irq = irq;

	s->rx_irq = FUNC10(pdev, 1);
	if (s->rx_irq < 0)
		return s->rx_irq;

	s->syscon = FUNC14(np, "syscon");
	if (FUNC0(s->syscon))
		return FUNC1(s->syscon);

	s->port.line		= FUNC9(np, "serial");
	s->port.dev		= &pdev->dev;
	s->port.iotype		= UPIO_MEM32;
	s->port.mapbase		= res->start;
	s->port.type		= PORT_CLPS711X;
	s->port.fifosize	= 16;
	s->port.flags		= UPF_SKIP_TEST | UPF_FIXED_TYPE;
	s->port.uartclk		= FUNC2(uart_clk);
	s->port.ops		= &uart_clps711x_ops;

	FUNC12(pdev, s);

	s->gpios = FUNC8(&pdev->dev, 0);
	if (FUNC0(s->gpios))
	    return FUNC1(s->gpios);

	ret = FUNC15(&clps711x_uart, &s->port);
	if (ret)
		return ret;

	/* Disable port */
	if (!FUNC16(&s->port))
		FUNC13(s->syscon, SYSCON_OFFSET, SYSCON_UARTEN, 0);

	s->tx_enabled = 1;

	ret = FUNC7(&pdev->dev, s->port.irq, uart_clps711x_int_tx, 0,
			       FUNC3(&pdev->dev), &s->port);
	if (ret) {
		FUNC17(&clps711x_uart, &s->port);
		return ret;
	}

	ret = FUNC7(&pdev->dev, s->rx_irq, uart_clps711x_int_rx, 0,
			       FUNC3(&pdev->dev), &s->port);
	if (ret)
		FUNC17(&clps711x_uart, &s->port);

	return ret;
}