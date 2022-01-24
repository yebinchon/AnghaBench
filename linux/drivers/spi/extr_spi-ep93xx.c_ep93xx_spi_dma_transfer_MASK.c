#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct spi_master {int /*<<< orphan*/  dev; } ;
struct ep93xx_spi {int /*<<< orphan*/  dma_tx; int /*<<< orphan*/  dma_rx; } ;
struct dma_async_tx_descriptor {struct spi_master* callback_param; int /*<<< orphan*/  callback; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ FUNC0 (struct dma_async_tx_descriptor*) ; 
 int FUNC1 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  ep93xx_spi_dma_callback ; 
 int /*<<< orphan*/  FUNC5 (struct spi_master*,int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC6 (struct spi_master*,int /*<<< orphan*/ ) ; 
 struct ep93xx_spi* FUNC7 (struct spi_master*) ; 

__attribute__((used)) static int FUNC8(struct spi_master *master)
{
	struct ep93xx_spi *espi = FUNC7(master);
	struct dma_async_tx_descriptor *rxd, *txd;

	rxd = FUNC6(master, DMA_FROM_DEVICE);
	if (FUNC0(rxd)) {
		FUNC2(&master->dev, "DMA RX failed: %ld\n", FUNC1(rxd));
		return FUNC1(rxd);
	}

	txd = FUNC6(master, DMA_TO_DEVICE);
	if (FUNC0(txd)) {
		FUNC5(master, DMA_FROM_DEVICE);
		FUNC2(&master->dev, "DMA TX failed: %ld\n", FUNC1(txd));
		return FUNC1(txd);
	}

	/* We are ready when RX is done */
	rxd->callback = ep93xx_spi_dma_callback;
	rxd->callback_param = master;

	/* Now submit both descriptors and start DMA */
	FUNC4(rxd);
	FUNC4(txd);

	FUNC3(espi->dma_rx);
	FUNC3(espi->dma_tx);

	/* signal that we need to wait for completion */
	return 1;
}