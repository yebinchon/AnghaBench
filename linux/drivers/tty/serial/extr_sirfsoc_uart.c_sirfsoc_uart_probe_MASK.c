#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct uart_port {size_t line; TYPE_4__* dev; int /*<<< orphan*/  lock; int /*<<< orphan*/ * ops; int /*<<< orphan*/  uartclk; int /*<<< orphan*/  irq; int /*<<< orphan*/  membase; int /*<<< orphan*/  mapbase; int /*<<< orphan*/  fifosize; struct sirfsoc_uart_port* private_data; int /*<<< orphan*/  flags; int /*<<< orphan*/  iotype; } ;
struct sirfsoc_uart_register {int /*<<< orphan*/  uart_type; } ;
struct TYPE_12__ {int /*<<< orphan*/  buf; scalar_t__ tail; scalar_t__ head; } ;
struct TYPE_13__ {int /*<<< orphan*/  dma_addr; TYPE_1__ xmit; } ;
struct TYPE_14__ {int /*<<< orphan*/  function; } ;
struct sirfsoc_uart_port {int hw_flow_ctrl; int cts_gpio; int rts_gpio; int is_atlas7; int is_hrt_enabled; void* rx_dma_chan; TYPE_2__ rx_dma_items; TYPE_3__ hrt; void* tx_dma_chan; int /*<<< orphan*/  clk; struct sirfsoc_uart_register* uart_reg; struct uart_port port; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_15__ {struct device_node* of_node; } ;
struct platform_device {int /*<<< orphan*/  id; TYPE_4__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct dma_slave_config {int src_maxburst; int dst_maxburst; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct sirfsoc_uart_port**) ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIRFSOC_RX_DMA_BUF_SIZE ; 
 int /*<<< orphan*/  SIRF_REAL_UART ; 
 int /*<<< orphan*/  SIRF_USP_UART ; 
 int /*<<< orphan*/  UPF_BOOT_AUTOCONF ; 
 int /*<<< orphan*/  UPIO_MEM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_4__*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sirfsoc_uart_port* FUNC8 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 void* FUNC12 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (void*,struct dma_slave_config*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC18 (struct device_node*,char*) ; 
 scalar_t__ FUNC19 (struct device_node*,char*) ; 
 scalar_t__ FUNC20 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 void* FUNC21 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC22 (int /*<<< orphan*/ ,struct device_node*) ; 
 scalar_t__ FUNC23 (struct device_node*,char*) ; 
 scalar_t__ FUNC24 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct resource* FUNC25 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct platform_device*,struct sirfsoc_uart_port*) ; 
 int /*<<< orphan*/  FUNC27 (struct resource*) ; 
 struct sirfsoc_uart_port** sirf_ports ; 
 int /*<<< orphan*/  sirfsoc_uart_drv ; 
 int /*<<< orphan*/  sirfsoc_uart_ids ; 
 int /*<<< orphan*/  sirfsoc_uart_ops ; 
 int /*<<< orphan*/  sirfsoc_uart_rx_dma_hrtimer_callback ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int FUNC29 (int /*<<< orphan*/ *,struct uart_port*) ; 

__attribute__((used)) static int FUNC30(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct sirfsoc_uart_port *sirfport;
	struct uart_port *port;
	struct resource *res;
	int ret;
	struct dma_slave_config slv_cfg = {
		.src_maxburst = 1,
	};
	struct dma_slave_config tx_slv_cfg = {
		.dst_maxburst = 2,
	};
	const struct of_device_id *match;

	match = FUNC22(sirfsoc_uart_ids, np);
	sirfport = FUNC8(&pdev->dev, sizeof(*sirfport), GFP_KERNEL);
	if (!sirfport) {
		ret = -ENOMEM;
		goto err;
	}
	sirfport->port.line = FUNC18(np, "serial");
	if (sirfport->port.line >= FUNC0(sirf_ports)) {
		FUNC4(&pdev->dev, "serial%d out of range\n",
			sirfport->port.line);
		return -EINVAL;
	}
	sirf_ports[sirfport->port.line] = sirfport;
	sirfport->port.iotype = UPIO_MEM;
	sirfport->port.flags = UPF_BOOT_AUTOCONF;
	port = &sirfport->port;
	port->dev = &pdev->dev;
	port->private_data = sirfport;
	sirfport->uart_reg = (struct sirfsoc_uart_register *)match->data;

	sirfport->hw_flow_ctrl =
		FUNC23(np, "uart-has-rtscts") ||
		FUNC23(np, "sirf,uart-has-rtscts") /* deprecated */;
	if (FUNC19(np, "sirf,prima2-uart") ||
		FUNC19(np, "sirf,atlas7-uart"))
		sirfport->uart_reg->uart_type = SIRF_REAL_UART;
	if (FUNC19(np, "sirf,prima2-usp-uart") ||
	    FUNC19(np, "sirf,atlas7-usp-uart")) {
		sirfport->uart_reg->uart_type =	SIRF_USP_UART;
		if (!sirfport->hw_flow_ctrl)
			goto usp_no_flow_control;
		if (FUNC20(np, "cts-gpios", NULL))
			sirfport->cts_gpio =
				FUNC21(np, "cts-gpios", 0);
		else
			sirfport->cts_gpio = -1;
		if (FUNC20(np, "rts-gpios", NULL))
			sirfport->rts_gpio =
				FUNC21(np, "rts-gpios", 0);
		else
			sirfport->rts_gpio = -1;

		if ((!FUNC16(sirfport->cts_gpio) ||
			 !FUNC16(sirfport->rts_gpio))) {
			ret = -EINVAL;
			FUNC4(&pdev->dev,
				"Usp flow control must have cts and rts gpio");
			goto err;
		}
		ret = FUNC6(&pdev->dev, sirfport->cts_gpio,
				"usp-cts-gpio");
		if (ret) {
			FUNC4(&pdev->dev, "Unable request cts gpio");
			goto err;
		}
		FUNC14(sirfport->cts_gpio);
		ret = FUNC6(&pdev->dev, sirfport->rts_gpio,
				"usp-rts-gpio");
		if (ret) {
			FUNC4(&pdev->dev, "Unable request rts gpio");
			goto err;
		}
		FUNC15(sirfport->rts_gpio, 1);
	}
usp_no_flow_control:
	if (FUNC19(np, "sirf,atlas7-uart") ||
	    FUNC19(np, "sirf,atlas7-usp-uart"))
		sirfport->is_atlas7 = true;

	if (FUNC24(np, "fifosize", &port->fifosize)) {
		FUNC4(&pdev->dev,
			"Unable to find fifosize in uart node.\n");
		ret = -EFAULT;
		goto err;
	}

	res = FUNC25(pdev, IORESOURCE_MEM, 0);
	if (res == NULL) {
		FUNC4(&pdev->dev, "Insufficient resources.\n");
		ret = -EFAULT;
		goto err;
	}
	port->mapbase = res->start;
	port->membase = FUNC7(&pdev->dev,
			res->start, FUNC27(res));
	if (!port->membase) {
		FUNC4(&pdev->dev, "Cannot remap resource.\n");
		ret = -ENOMEM;
		goto err;
	}
	res = FUNC25(pdev, IORESOURCE_IRQ, 0);
	if (res == NULL) {
		FUNC4(&pdev->dev, "Insufficient resources.\n");
		ret = -EFAULT;
		goto err;
	}
	port->irq = res->start;

	sirfport->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC1(sirfport->clk)) {
		ret = FUNC2(sirfport->clk);
		goto err;
	}
	port->uartclk = FUNC3(sirfport->clk);

	port->ops = &sirfsoc_uart_ops;
	FUNC28(&port->lock);

	FUNC26(pdev, sirfport);
	ret = FUNC29(&sirfsoc_uart_drv, port);
	if (ret != 0) {
		FUNC4(&pdev->dev, "Cannot add UART port(%d).\n", pdev->id);
		goto err;
	}

	sirfport->rx_dma_chan = FUNC12(port->dev, "rx");
	sirfport->rx_dma_items.xmit.buf =
		FUNC9(port->dev, SIRFSOC_RX_DMA_BUF_SIZE,
		&sirfport->rx_dma_items.dma_addr, GFP_KERNEL);
	if (!sirfport->rx_dma_items.xmit.buf) {
		FUNC4(port->dev, "Uart alloc bufa failed\n");
		ret = -ENOMEM;
		goto alloc_coherent_err;
	}
	sirfport->rx_dma_items.xmit.head =
		sirfport->rx_dma_items.xmit.tail = 0;
	if (sirfport->rx_dma_chan)
		FUNC13(sirfport->rx_dma_chan, &slv_cfg);
	sirfport->tx_dma_chan = FUNC12(port->dev, "tx");
	if (sirfport->tx_dma_chan)
		FUNC13(sirfport->tx_dma_chan, &tx_slv_cfg);
	if (sirfport->rx_dma_chan) {
		FUNC17(&sirfport->hrt, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
		sirfport->hrt.function = sirfsoc_uart_rx_dma_hrtimer_callback;
		sirfport->is_hrt_enabled = false;
	}

	return 0;
alloc_coherent_err:
	FUNC10(port->dev, SIRFSOC_RX_DMA_BUF_SIZE,
			sirfport->rx_dma_items.xmit.buf,
			sirfport->rx_dma_items.dma_addr);
	FUNC11(sirfport->rx_dma_chan);
err:
	return ret;
}