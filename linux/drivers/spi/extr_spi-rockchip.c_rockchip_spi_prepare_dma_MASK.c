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
struct TYPE_4__ {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct TYPE_3__ {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct spi_transfer {TYPE_2__ tx_sg; scalar_t__ tx_buf; TYPE_1__ rx_sg; scalar_t__ rx_buf; } ;
struct spi_master {int /*<<< orphan*/  dma_tx; int /*<<< orphan*/  dma_rx; } ;
struct rockchip_spi {int fifo_len; int /*<<< orphan*/  state; int /*<<< orphan*/  n_bytes; int /*<<< orphan*/  dma_addr_tx; int /*<<< orphan*/  dma_addr_rx; } ;
struct dma_slave_config {int src_maxburst; int dst_maxburst; int /*<<< orphan*/  dst_addr_width; int /*<<< orphan*/  dst_addr; int /*<<< orphan*/  direction; int /*<<< orphan*/  src_addr_width; int /*<<< orphan*/  src_addr; } ;
struct dma_async_tx_descriptor {struct spi_master* callback_param; int /*<<< orphan*/  callback; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  DMA_PREP_INTERRUPT ; 
 int EINVAL ; 
 int /*<<< orphan*/  RXDMA ; 
 int /*<<< orphan*/  TXDMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct dma_slave_config*) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rockchip_spi_dma_rxcb ; 
 int /*<<< orphan*/  rockchip_spi_dma_txcb ; 
 int /*<<< orphan*/  FUNC7 (struct rockchip_spi*,int) ; 

__attribute__((used)) static int FUNC8(struct rockchip_spi *rs,
		struct spi_master *master, struct spi_transfer *xfer)
{
	struct dma_async_tx_descriptor *rxdesc, *txdesc;

	FUNC1(&rs->state, 0);

	rxdesc = NULL;
	if (xfer->rx_buf) {
		struct dma_slave_config rxconf = {
			.direction = DMA_DEV_TO_MEM,
			.src_addr = rs->dma_addr_rx,
			.src_addr_width = rs->n_bytes,
			.src_maxburst = 1,
		};

		FUNC4(master->dma_rx, &rxconf);

		rxdesc = FUNC3(
				master->dma_rx,
				xfer->rx_sg.sgl, xfer->rx_sg.nents,
				DMA_DEV_TO_MEM, DMA_PREP_INTERRUPT);
		if (!rxdesc)
			return -EINVAL;

		rxdesc->callback = rockchip_spi_dma_rxcb;
		rxdesc->callback_param = master;
	}

	txdesc = NULL;
	if (xfer->tx_buf) {
		struct dma_slave_config txconf = {
			.direction = DMA_MEM_TO_DEV,
			.dst_addr = rs->dma_addr_tx,
			.dst_addr_width = rs->n_bytes,
			.dst_maxburst = rs->fifo_len / 4,
		};

		FUNC4(master->dma_tx, &txconf);

		txdesc = FUNC3(
				master->dma_tx,
				xfer->tx_sg.sgl, xfer->tx_sg.nents,
				DMA_MEM_TO_DEV, DMA_PREP_INTERRUPT);
		if (!txdesc) {
			if (rxdesc)
				FUNC6(master->dma_rx);
			return -EINVAL;
		}

		txdesc->callback = rockchip_spi_dma_txcb;
		txdesc->callback_param = master;
	}

	/* rx must be started before tx due to spi instinct */
	if (rxdesc) {
		FUNC0(RXDMA, &rs->state);
		FUNC5(rxdesc);
		FUNC2(master->dma_rx);
	}

	FUNC7(rs, true);

	if (txdesc) {
		FUNC0(TXDMA, &rs->state);
		FUNC5(txdesc);
		FUNC2(master->dma_tx);
	}

	/* 1 means the transfer is in progress */
	return 1;
}