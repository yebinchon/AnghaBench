#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  dev; TYPE_2__* state; scalar_t__ mapbase; } ;
struct s3c24xx_uart_port {TYPE_3__ port; struct s3c24xx_uart_dma* dma; } ;
struct TYPE_8__ {int src_maxburst; int dst_maxburst; scalar_t__ dst_addr; void* dst_addr_width; int /*<<< orphan*/  direction; scalar_t__ src_addr; void* src_addr_width; } ;
struct s3c24xx_uart_dma {void* rx_chan; void* tx_chan; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  rx_size; void* rx_addr; void* tx_addr; TYPE_4__ tx_conf; TYPE_4__ rx_conf; } ;
struct dma_slave_caps {scalar_t__ residue_granularity; } ;
struct TYPE_5__ {int /*<<< orphan*/  buf; } ;
struct TYPE_6__ {TYPE_1__ xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 scalar_t__ DMA_RESIDUE_GRANULARITY_BURST ; 
 void* DMA_SLAVE_BUSWIDTH_1_BYTE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EIO ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (void*) ; 
 scalar_t__ S3C2410_URXH ; 
 scalar_t__ S3C2410_UTXH ; 
 int /*<<< orphan*/  UART_XMIT_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC3 (void*,struct dma_slave_caps*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct s3c24xx_uart_port *p)
{
	struct s3c24xx_uart_dma	*dma = p->dma;
	struct dma_slave_caps dma_caps;
	const char *reason = NULL;
	int ret;

	/* Default slave configuration parameters */
	dma->rx_conf.direction		= DMA_DEV_TO_MEM;
	dma->rx_conf.src_addr_width	= DMA_SLAVE_BUSWIDTH_1_BYTE;
	dma->rx_conf.src_addr		= p->port.mapbase + S3C2410_URXH;
	dma->rx_conf.src_maxburst	= 1;

	dma->tx_conf.direction		= DMA_MEM_TO_DEV;
	dma->tx_conf.dst_addr_width	= DMA_SLAVE_BUSWIDTH_1_BYTE;
	dma->tx_conf.dst_addr		= p->port.mapbase + S3C2410_UTXH;
	dma->tx_conf.dst_maxburst	= 1;

	dma->rx_chan = FUNC7(p->port.dev, "rx");

	if (FUNC0(dma->rx_chan)) {
		reason = "DMA RX channel request failed";
		ret = FUNC1(dma->rx_chan);
		goto err_warn;
	}

	ret = FUNC3(dma->rx_chan, &dma_caps);
	if (ret < 0 ||
	    dma_caps.residue_granularity < DMA_RESIDUE_GRANULARITY_BURST) {
		reason = "insufficient DMA RX engine capabilities";
		ret = -EOPNOTSUPP;
		goto err_release_rx;
	}

	FUNC9(dma->rx_chan, &dma->rx_conf);

	dma->tx_chan = FUNC7(p->port.dev, "tx");
	if (FUNC0(dma->tx_chan)) {
		reason = "DMA TX channel request failed";
		ret = FUNC1(dma->tx_chan);
		goto err_release_rx;
	}

	ret = FUNC3(dma->tx_chan, &dma_caps);
	if (ret < 0 ||
	    dma_caps.residue_granularity < DMA_RESIDUE_GRANULARITY_BURST) {
		reason = "insufficient DMA TX engine capabilities";
		ret = -EOPNOTSUPP;
		goto err_release_tx;
	}

	FUNC9(dma->tx_chan, &dma->tx_conf);

	/* RX buffer */
	dma->rx_size = PAGE_SIZE;

	dma->rx_buf = FUNC11(dma->rx_size, GFP_KERNEL);
	if (!dma->rx_buf) {
		ret = -ENOMEM;
		goto err_release_tx;
	}

	dma->rx_addr = FUNC4(p->port.dev, dma->rx_buf,
				dma->rx_size, DMA_FROM_DEVICE);
	if (FUNC5(p->port.dev, dma->rx_addr)) {
		reason = "DMA mapping error for RX buffer";
		ret = -EIO;
		goto err_free_rx;
	}

	/* TX buffer */
	dma->tx_addr = FUNC4(p->port.dev, p->port.state->xmit.buf,
				UART_XMIT_SIZE, DMA_TO_DEVICE);
	if (FUNC5(p->port.dev, dma->tx_addr)) {
		reason = "DMA mapping error for TX buffer";
		ret = -EIO;
		goto err_unmap_rx;
	}

	return 0;

err_unmap_rx:
	FUNC8(p->port.dev, dma->rx_addr, dma->rx_size,
			 DMA_FROM_DEVICE);
err_free_rx:
	FUNC10(dma->rx_buf);
err_release_tx:
	FUNC6(dma->tx_chan);
err_release_rx:
	FUNC6(dma->rx_chan);
err_warn:
	if (reason)
		FUNC2(p->port.dev, "%s, DMA will not be used\n", reason);
	return ret;
}