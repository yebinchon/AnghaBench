#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int fifosize; size_t line; scalar_t__ membase; int /*<<< orphan*/  uartclk; struct mvebu_uart* private_data; int /*<<< orphan*/  mapbase; scalar_t__ irqflags; int /*<<< orphan*/  irq; int /*<<< orphan*/  flags; int /*<<< orphan*/  iotype; scalar_t__ regshift; int /*<<< orphan*/ * ops; int /*<<< orphan*/  type; TYPE_1__* dev; int /*<<< orphan*/  lock; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {int id; TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct mvebu_uart_driver_data {int dummy; } ;
struct mvebu_uart {int* irq; scalar_t__ clk; struct uart_port* port; struct mvebu_uart_driver_data* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_SOFT_RST ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct uart_port*) ; 
 int MVEBU_NR_UARTS ; 
 int /*<<< orphan*/  PORT_MVEBU ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct uart_port*) ; 
 size_t UART_IRQ_SUM ; 
 size_t UART_RX_IRQ ; 
 size_t UART_TX_IRQ ; 
 int /*<<< orphan*/  UPF_FIXED_PORT ; 
 int /*<<< orphan*/  UPIO_MEM32 ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,...) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_1__*,struct resource*) ; 
 struct mvebu_uart* FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mvebu_uart_driver ; 
 int /*<<< orphan*/  mvebu_uart_of_match ; 
 int /*<<< orphan*/  mvebu_uart_ops ; 
 struct uart_port* mvebu_uart_ports ; 
 int FUNC10 (int /*<<< orphan*/ ,char*) ; 
 struct of_device_id* FUNC11 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct platform_device*,char*) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct mvebu_uart*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *,struct uart_port*) ; 
 int /*<<< orphan*/  uart_num_counter ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct resource *reg = FUNC14(pdev, IORESOURCE_MEM, 0);
	const struct of_device_id *match = FUNC11(mvebu_uart_of_match,
							   &pdev->dev);
	struct uart_port *port;
	struct mvebu_uart *mvuart;
	int ret, id, irq;

	if (!reg) {
		FUNC6(&pdev->dev, "no registers defined\n");
		return -EINVAL;
	}

	if (!match)
		return -ENODEV;

	/* Assume that all UART ports have a DT alias or none has */
	id = FUNC10(pdev->dev.of_node, "serial");
	if (!pdev->dev.of_node || id < 0)
		pdev->id = uart_num_counter++;
	else
		pdev->id = id;

	if (pdev->id >= MVEBU_NR_UARTS) {
		FUNC6(&pdev->dev, "cannot have more than %d UART ports\n",
			MVEBU_NR_UARTS);
		return -EINVAL;
	}

	port = &mvebu_uart_ports[pdev->id];

	FUNC17(&port->lock);

	port->dev        = &pdev->dev;
	port->type       = PORT_MVEBU;
	port->ops        = &mvebu_uart_ops;
	port->regshift   = 0;

	port->fifosize   = 32;
	port->iotype     = UPIO_MEM32;
	port->flags      = UPF_FIXED_PORT;
	port->line       = pdev->id;

	/*
	 * IRQ number is not stored in this structure because we may have two of
	 * them per port (RX and TX). Instead, use the driver UART structure
	 * array so called ->irq[].
	 */
	port->irq        = 0;
	port->irqflags   = 0;
	port->mapbase    = reg->start;

	port->membase = FUNC8(&pdev->dev, reg);
	if (FUNC0(port->membase))
		return -FUNC2(port->membase);

	mvuart = FUNC9(&pdev->dev, sizeof(struct mvebu_uart),
			      GFP_KERNEL);
	if (!mvuart)
		return -ENOMEM;

	/* Get controller data depending on the compatible string */
	mvuart->data = (struct mvebu_uart_driver_data *)match->data;
	mvuart->port = port;

	port->private_data = mvuart;
	FUNC16(pdev, mvuart);

	/* Get fixed clock frequency */
	mvuart->clk = FUNC7(&pdev->dev, NULL);
	if (FUNC0(mvuart->clk)) {
		if (FUNC2(mvuart->clk) == -EPROBE_DEFER)
			return FUNC2(mvuart->clk);

		if (FUNC1(port)) {
			FUNC6(&pdev->dev, "unable to get UART clock\n");
			return FUNC2(mvuart->clk);
		}
	} else {
		if (!FUNC5(mvuart->clk))
			port->uartclk = FUNC4(mvuart->clk);
	}

	/* Manage interrupts */
	if (FUNC15(pdev) == 1) {
		/* Old bindings: no name on the single unamed UART0 IRQ */
		irq = FUNC12(pdev, 0);
		if (irq < 0)
			return irq;

		mvuart->irq[UART_IRQ_SUM] = irq;
	} else {
		/*
		 * New bindings: named interrupts (RX, TX) for both UARTS,
		 * only make use of uart-rx and uart-tx interrupts, do not use
		 * uart-sum of UART0 port.
		 */
		irq = FUNC13(pdev, "uart-rx");
		if (irq < 0)
			return irq;

		mvuart->irq[UART_RX_IRQ] = irq;

		irq = FUNC13(pdev, "uart-tx");
		if (irq < 0)
			return irq;

		mvuart->irq[UART_TX_IRQ] = irq;
	}

	/* UART Soft Reset*/
	FUNC20(CTRL_SOFT_RST, port->membase + FUNC3(port));
	FUNC19(1);
	FUNC20(0, port->membase + FUNC3(port));

	ret = FUNC18(&mvebu_uart_driver, port);
	if (ret)
		return ret;
	return 0;
}