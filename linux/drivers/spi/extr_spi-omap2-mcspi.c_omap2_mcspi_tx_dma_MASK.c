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
struct TYPE_2__ {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct spi_transfer {TYPE_1__ tx_sg; } ;
struct spi_device {size_t chip_select; int /*<<< orphan*/  master; } ;
struct omap2_mcspi_dma {scalar_t__ dma_tx; } ;
struct omap2_mcspi {struct omap2_mcspi_dma* dma_channels; } ;
struct dma_slave_config {int dummy; } ;
struct dma_async_tx_descriptor {struct spi_device* callback_param; int /*<<< orphan*/  callback; } ;

/* Variables and functions */
 int DMA_CTRL_ACK ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int DMA_PREP_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct dma_async_tx_descriptor* FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct dma_slave_config*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  omap2_mcspi_tx_callback ; 
 struct omap2_mcspi* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct spi_device *spi,
				struct spi_transfer *xfer,
				struct dma_slave_config cfg)
{
	struct omap2_mcspi	*mcspi;
	struct omap2_mcspi_dma  *mcspi_dma;

	mcspi = FUNC5(spi->master);
	mcspi_dma = &mcspi->dma_channels[spi->chip_select];

	if (mcspi_dma->dma_tx) {
		struct dma_async_tx_descriptor *tx;

		FUNC2(mcspi_dma->dma_tx, &cfg);

		tx = FUNC1(mcspi_dma->dma_tx, xfer->tx_sg.sgl,
					     xfer->tx_sg.nents,
					     DMA_MEM_TO_DEV,
					     DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
		if (tx) {
			tx->callback = omap2_mcspi_tx_callback;
			tx->callback_param = spi;
			FUNC3(tx);
		} else {
			/* FIXME: fall back to PIO? */
		}
	}
	FUNC0(mcspi_dma->dma_tx);
	FUNC4(spi, 0, 1);

}