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
struct spi_device {int chip_select; struct spi_master* master; } ;
struct omap2_mcspi_dma {int /*<<< orphan*/ * dma_rx; int /*<<< orphan*/ * dma_tx; int /*<<< orphan*/  dma_tx_ch_name; int /*<<< orphan*/  dma_rx_ch_name; int /*<<< orphan*/  dma_tx_completion; int /*<<< orphan*/  dma_rx_completion; } ;
struct omap2_mcspi {struct omap2_mcspi_dma* dma_channels; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct omap2_mcspi* FUNC5 (struct spi_master*) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi)
{
	struct spi_master	*master = spi->master;
	struct omap2_mcspi	*mcspi;
	struct omap2_mcspi_dma	*mcspi_dma;
	int ret = 0;

	mcspi = FUNC5(master);
	mcspi_dma = mcspi->dma_channels + spi->chip_select;

	FUNC4(&mcspi_dma->dma_rx_completion);
	FUNC4(&mcspi_dma->dma_tx_completion);

	mcspi_dma->dma_rx = FUNC3(&master->dev,
					     mcspi_dma->dma_rx_ch_name);
	if (FUNC0(mcspi_dma->dma_rx)) {
		ret = FUNC1(mcspi_dma->dma_rx);
		mcspi_dma->dma_rx = NULL;
		goto no_dma;
	}

	mcspi_dma->dma_tx = FUNC3(&master->dev,
					     mcspi_dma->dma_tx_ch_name);
	if (FUNC0(mcspi_dma->dma_tx)) {
		ret = FUNC1(mcspi_dma->dma_tx);
		mcspi_dma->dma_tx = NULL;
		FUNC2(mcspi_dma->dma_rx);
		mcspi_dma->dma_rx = NULL;
	}

no_dma:
	return ret;
}