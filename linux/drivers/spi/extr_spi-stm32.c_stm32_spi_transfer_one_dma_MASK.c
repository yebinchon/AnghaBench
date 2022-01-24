#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct stm32_spi {scalar_t__ cur_comm; int cur_usedma; TYPE_6__* cfg; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; scalar_t__ dma_rx; scalar_t__ dma_tx; scalar_t__ rx_buf; scalar_t__ tx_buf; } ;
struct TYPE_8__ {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct TYPE_7__ {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct spi_transfer {TYPE_2__ tx_sg; TYPE_1__ rx_sg; } ;
struct dma_slave_config {int /*<<< orphan*/  direction; } ;
struct dma_async_tx_descriptor {struct stm32_spi* callback_param; int /*<<< orphan*/  callback; } ;
struct TYPE_12__ {int (* transfer_one_irq ) (struct stm32_spi*) ;TYPE_5__* regs; int /*<<< orphan*/  (* transfer_one_dma_start ) (struct stm32_spi*) ;int /*<<< orphan*/  dma_tx_cb; int /*<<< orphan*/  dma_rx_cb; } ;
struct TYPE_10__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  reg; } ;
struct TYPE_9__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  reg; } ;
struct TYPE_11__ {TYPE_4__ dma_rx_en; TYPE_3__ dma_tx_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  DMA_PREP_INTERRUPT ; 
 scalar_t__ SPI_3WIRE_TX ; 
 scalar_t__ SPI_FULL_DUPLEX ; 
 scalar_t__ SPI_SIMPLEX_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct dma_slave_config*) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct stm32_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct stm32_spi*,struct dma_slave_config*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct stm32_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct stm32_spi*) ; 
 int FUNC14 (struct stm32_spi*) ; 

__attribute__((used)) static int FUNC15(struct stm32_spi *spi,
				      struct spi_transfer *xfer)
{
	struct dma_slave_config tx_dma_conf, rx_dma_conf;
	struct dma_async_tx_descriptor *tx_dma_desc, *rx_dma_desc;
	unsigned long flags;

	FUNC8(&spi->lock, flags);

	rx_dma_desc = NULL;
	if (spi->rx_buf && spi->dma_rx) {
		FUNC11(spi, &rx_dma_conf, DMA_DEV_TO_MEM);
		FUNC5(spi->dma_rx, &rx_dma_conf);

		/* Enable Rx DMA request */
		FUNC12(spi, spi->cfg->regs->dma_rx_en.reg,
				   spi->cfg->regs->dma_rx_en.mask);

		rx_dma_desc = FUNC4(
					spi->dma_rx, xfer->rx_sg.sgl,
					xfer->rx_sg.nents,
					rx_dma_conf.direction,
					DMA_PREP_INTERRUPT);
	}

	tx_dma_desc = NULL;
	if (spi->tx_buf && spi->dma_tx) {
		FUNC11(spi, &tx_dma_conf, DMA_MEM_TO_DEV);
		FUNC5(spi->dma_tx, &tx_dma_conf);

		tx_dma_desc = FUNC4(
					spi->dma_tx, xfer->tx_sg.sgl,
					xfer->tx_sg.nents,
					tx_dma_conf.direction,
					DMA_PREP_INTERRUPT);
	}

	if ((spi->tx_buf && spi->dma_tx && !tx_dma_desc) ||
	    (spi->rx_buf && spi->dma_rx && !rx_dma_desc))
		goto dma_desc_error;

	if (spi->cur_comm == SPI_FULL_DUPLEX && (!tx_dma_desc || !rx_dma_desc))
		goto dma_desc_error;

	if (rx_dma_desc) {
		rx_dma_desc->callback = spi->cfg->dma_rx_cb;
		rx_dma_desc->callback_param = spi;

		if (FUNC3(FUNC6(rx_dma_desc))) {
			FUNC0(spi->dev, "Rx DMA submit failed\n");
			goto dma_desc_error;
		}
		/* Enable Rx DMA channel */
		FUNC2(spi->dma_rx);
	}

	if (tx_dma_desc) {
		if (spi->cur_comm == SPI_SIMPLEX_TX ||
		    spi->cur_comm == SPI_3WIRE_TX) {
			tx_dma_desc->callback = spi->cfg->dma_tx_cb;
			tx_dma_desc->callback_param = spi;
		}

		if (FUNC3(FUNC6(tx_dma_desc))) {
			FUNC0(spi->dev, "Tx DMA submit failed\n");
			goto dma_submit_error;
		}
		/* Enable Tx DMA channel */
		FUNC2(spi->dma_tx);

		/* Enable Tx DMA request */
		FUNC12(spi, spi->cfg->regs->dma_tx_en.reg,
				   spi->cfg->regs->dma_tx_en.mask);
	}

	spi->cfg->transfer_one_dma_start(spi);

	FUNC9(&spi->lock, flags);

	return 1;

dma_submit_error:
	if (spi->dma_rx)
		FUNC7(spi->dma_rx);

dma_desc_error:
	FUNC10(spi, spi->cfg->regs->dma_rx_en.reg,
			   spi->cfg->regs->dma_rx_en.mask);

	FUNC9(&spi->lock, flags);

	FUNC1(spi->dev, "DMA issue: fall back to irq transfer\n");

	spi->cur_usedma = false;
	return spi->cfg->transfer_one_irq(spi);
}