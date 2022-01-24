#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_17__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {struct lpuart_soc_data* data; } ;
struct lpuart_soc_data {int /*<<< orphan*/  iotype; int /*<<< orphan*/  devtype; scalar_t__ reg_off; } ;
struct TYPE_18__ {int flags; scalar_t__ delay_rts_after_send; scalar_t__ delay_rts_before_send; } ;
struct TYPE_20__ {int line; int irq; TYPE_1__* dev; TYPE_2__ rs485; int /*<<< orphan*/  uartclk; int /*<<< orphan*/  (* rs485_config ) (TYPE_4__*,TYPE_2__*) ;int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; int /*<<< orphan*/  iotype; int /*<<< orphan*/  type; int /*<<< orphan*/  mapbase; int /*<<< orphan*/ * membase; } ;
struct lpuart_port {TYPE_4__ port; void* dma_rx_chan; void* dma_tx_chan; int /*<<< orphan*/ * baud_clk; int /*<<< orphan*/ * ipg_clk; int /*<<< orphan*/  devtype; } ;
struct device_node {int dummy; } ;
struct TYPE_19__ {int /*<<< orphan*/  cons; } ;

/* Variables and functions */
 int FUNC0 (struct lpuart_port**) ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LPUART32_CONSOLE ; 
 int /*<<< orphan*/  LPUART_CONSOLE ; 
 int /*<<< orphan*/  PORT_LPUART ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int SER_RS485_RX_DURING_TX ; 
 int /*<<< orphan*/  UART_NR ; 
 int /*<<< orphan*/  UPF_BOOT_AUTOCONF ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 void* FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,struct resource*) ; 
 struct lpuart_port* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lpuart_port*) ; 
 void* FUNC9 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  fsl_lpuart_ida ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct lpuart_port*) ; 
 int /*<<< orphan*/  lpuart32_int ; 
 int /*<<< orphan*/  lpuart32_pops ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (struct lpuart_port*) ; 
 int /*<<< orphan*/  lpuart_dt_ids ; 
 int FUNC14 (struct lpuart_port*) ; 
 int /*<<< orphan*/  FUNC15 (struct lpuart_port*) ; 
 int /*<<< orphan*/  lpuart_int ; 
 scalar_t__ FUNC16 (struct lpuart_port*) ; 
 int /*<<< orphan*/  lpuart_pops ; 
 struct lpuart_port** lpuart_ports ; 
 TYPE_3__ lpuart_reg ; 
 int FUNC17 (struct device_node*,char*) ; 
 struct of_device_id* FUNC18 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,TYPE_4__*) ; 
 int FUNC22 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	const struct of_device_id *of_id = FUNC18(lpuart_dt_ids,
							   &pdev->dev);
	const struct lpuart_soc_data *sdata = of_id->data;
	struct device_node *np = pdev->dev.of_node;
	struct lpuart_port *sport;
	struct resource *res;
	int ret;

	sport = FUNC7(&pdev->dev, sizeof(*sport), GFP_KERNEL);
	if (!sport)
		return -ENOMEM;

	ret = FUNC17(np, "serial");
	if (ret < 0) {
		ret = FUNC10(&fsl_lpuart_ida, 0, UART_NR, GFP_KERNEL);
		if (ret < 0) {
			FUNC3(&pdev->dev, "port line is full, add device failed\n");
			return ret;
		}
	}
	if (ret >= FUNC0(lpuart_ports)) {
		FUNC3(&pdev->dev, "serial%d out of range\n", ret);
		return -EINVAL;
	}
	sport->port.line = ret;
	res = FUNC20(pdev, IORESOURCE_MEM, 0);
	sport->port.membase = FUNC6(&pdev->dev, res);
	if (FUNC1(sport->port.membase))
		return FUNC2(sport->port.membase);

	sport->port.membase += sdata->reg_off;
	sport->port.mapbase = res->start;
	sport->port.dev = &pdev->dev;
	sport->port.type = PORT_LPUART;
	sport->devtype = sdata->devtype;
	ret = FUNC19(pdev, 0);
	if (ret < 0)
		return ret;
	sport->port.irq = ret;
	sport->port.iotype = sdata->iotype;
	if (FUNC16(sport))
		sport->port.ops = &lpuart32_pops;
	else
		sport->port.ops = &lpuart_pops;
	sport->port.flags = UPF_BOOT_AUTOCONF;

	sport->port.rs485_config = lpuart_config_rs485;

	sport->ipg_clk = FUNC5(&pdev->dev, "ipg");
	if (FUNC1(sport->ipg_clk)) {
		ret = FUNC2(sport->ipg_clk);
		FUNC3(&pdev->dev, "failed to get uart ipg clk: %d\n", ret);
		return ret;
	}

	sport->baud_clk = NULL;
	if (FUNC11(sport)) {
		sport->baud_clk = FUNC5(&pdev->dev, "baud");
		if (FUNC1(sport->baud_clk)) {
			ret = FUNC2(sport->baud_clk);
			FUNC3(&pdev->dev, "failed to get uart baud clk: %d\n", ret);
			return ret;
		}
	}

	ret = FUNC14(sport);
	if (ret)
		return ret;
	sport->port.uartclk = FUNC15(sport);

	lpuart_ports[sport->port.line] = sport;

	FUNC21(pdev, &sport->port);

	if (FUNC16(sport)) {
		lpuart_reg.cons = LPUART32_CONSOLE;
		ret = FUNC8(&pdev->dev, sport->port.irq, lpuart32_int, 0,
					DRIVER_NAME, sport);
	} else {
		lpuart_reg.cons = LPUART_CONSOLE;
		ret = FUNC8(&pdev->dev, sport->port.irq, lpuart_int, 0,
					DRIVER_NAME, sport);
	}

	if (ret)
		goto failed_irq_request;

	ret = FUNC22(&lpuart_reg, &sport->port);
	if (ret)
		goto failed_attach_port;

	FUNC23(&pdev->dev, &sport->port.rs485);

	if (sport->port.rs485.flags & SER_RS485_RX_DURING_TX)
		FUNC3(&pdev->dev, "driver doesn't support RX during TX\n");

	if (sport->port.rs485.delay_rts_before_send ||
	    sport->port.rs485.delay_rts_after_send)
		FUNC3(&pdev->dev, "driver doesn't support RTS delays\n");

	FUNC12(&sport->port, &sport->port.rs485);

	sport->dma_tx_chan = FUNC9(sport->port.dev, "tx");
	if (!sport->dma_tx_chan)
		FUNC4(sport->port.dev, "DMA tx channel request failed, "
				"operating without tx DMA\n");

	sport->dma_rx_chan = FUNC9(sport->port.dev, "rx");
	if (!sport->dma_rx_chan)
		FUNC4(sport->port.dev, "DMA rx channel request failed, "
				"operating without rx DMA\n");

	return 0;

failed_attach_port:
failed_irq_request:
	FUNC13(sport);
	return ret;
}