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
struct spi_device {size_t chip_select; int /*<<< orphan*/  master; } ;
struct omap2_mcspi_dma {int /*<<< orphan*/  dma_rx_completion; } ;
struct omap2_mcspi {struct omap2_mcspi_dma* dma_channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_device*,int,int /*<<< orphan*/ ) ; 
 struct omap2_mcspi* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *data)
{
	struct spi_device *spi = data;
	struct omap2_mcspi *mcspi = FUNC2(spi->master);
	struct omap2_mcspi_dma *mcspi_dma = &mcspi->dma_channels[spi->chip_select];

	/* We must disable the DMA RX request */
	FUNC1(spi, 1, 0);

	FUNC0(&mcspi_dma->dma_rx_completion);
}