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
struct uart_port {scalar_t__ mapbase; } ;
struct stm32_usart_offsets {scalar_t__ rdr; } ;
struct stm32_port {int /*<<< orphan*/ * rx_ch; int /*<<< orphan*/  rx_dma_buf; int /*<<< orphan*/  rx_buf; struct uart_port port; TYPE_1__* info; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct dma_slave_config {int /*<<< orphan*/  src_addr_width; scalar_t__ src_addr; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/ * callback_param; int /*<<< orphan*/ * callback; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;
typedef  int /*<<< orphan*/  config ;
struct TYPE_2__ {struct stm32_usart_offsets ofs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_PREP_INTERRUPT ; 
 int /*<<< orphan*/  DMA_SLAVE_BUSWIDTH_1_BYTE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RX_BUF_L ; 
 int /*<<< orphan*/  RX_BUF_P ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (struct device*,char*) ; 
 struct dma_async_tx_descriptor* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct dma_slave_config*) ; 
 int /*<<< orphan*/  FUNC9 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC10 (struct dma_slave_config*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct stm32_port *stm32port,
				 struct platform_device *pdev)
{
	struct stm32_usart_offsets *ofs = &stm32port->info->ofs;
	struct uart_port *port = &stm32port->port;
	struct device *dev = &pdev->dev;
	struct dma_slave_config config;
	struct dma_async_tx_descriptor *desc = NULL;
	dma_cookie_t cookie;
	int ret;

	/* Request DMA RX channel */
	stm32port->rx_ch = FUNC6(dev, "rx");
	if (!stm32port->rx_ch) {
		FUNC1(dev, "rx dma alloc failed\n");
		return -ENODEV;
	}
	stm32port->rx_buf = FUNC2(&pdev->dev, RX_BUF_L,
						 &stm32port->rx_dma_buf,
						 GFP_KERNEL);
	if (!stm32port->rx_buf) {
		ret = -ENOMEM;
		goto alloc_err;
	}

	/* Configure DMA channel */
	FUNC10(&config, 0, sizeof(config));
	config.src_addr = port->mapbase + ofs->rdr;
	config.src_addr_width = DMA_SLAVE_BUSWIDTH_1_BYTE;

	ret = FUNC8(stm32port->rx_ch, &config);
	if (ret < 0) {
		FUNC0(dev, "rx dma channel config failed\n");
		ret = -ENODEV;
		goto config_err;
	}

	/* Prepare a DMA cyclic transaction */
	desc = FUNC7(stm32port->rx_ch,
					 stm32port->rx_dma_buf,
					 RX_BUF_L, RX_BUF_P, DMA_DEV_TO_MEM,
					 DMA_PREP_INTERRUPT);
	if (!desc) {
		FUNC0(dev, "rx dma prep cyclic failed\n");
		ret = -ENODEV;
		goto config_err;
	}

	/* No callback as dma buffer is drained on usart interrupt */
	desc->callback = NULL;
	desc->callback_param = NULL;

	/* Push current DMA transaction in the pending queue */
	cookie = FUNC9(desc);

	/* Issue pending DMA requests */
	FUNC3(stm32port->rx_ch);

	return 0;

config_err:
	FUNC4(&pdev->dev,
			  RX_BUF_L, stm32port->rx_buf,
			  stm32port->rx_dma_buf);

alloc_err:
	FUNC5(stm32port->rx_ch);
	stm32port->rx_ch = NULL;

	return ret;
}