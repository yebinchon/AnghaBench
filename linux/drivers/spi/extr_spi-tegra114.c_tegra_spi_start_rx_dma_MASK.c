#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tegra_spi_data {int /*<<< orphan*/  rx_dma_chan; TYPE_1__* rx_dma_desc; int /*<<< orphan*/  rx_dma_complete; int /*<<< orphan*/  dev; int /*<<< orphan*/  rx_dma_phys; } ;
struct TYPE_3__ {int /*<<< orphan*/ * callback_param; int /*<<< orphan*/  callback; } ;

/* Variables and functions */
 int DMA_CTRL_ACK ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int DMA_PREP_INTERRUPT ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tegra_spi_dma_complete ; 

__attribute__((used)) static int FUNC5(struct tegra_spi_data *tspi, int len)
{
	FUNC4(&tspi->rx_dma_complete);
	tspi->rx_dma_desc = FUNC2(tspi->rx_dma_chan,
				tspi->rx_dma_phys, len, DMA_DEV_TO_MEM,
				DMA_PREP_INTERRUPT |  DMA_CTRL_ACK);
	if (!tspi->rx_dma_desc) {
		FUNC0(tspi->dev, "Not able to get desc for Rx\n");
		return -EIO;
	}

	tspi->rx_dma_desc->callback = tegra_spi_dma_complete;
	tspi->rx_dma_desc->callback_param = &tspi->rx_dma_complete;

	FUNC3(tspi->rx_dma_desc);
	FUNC1(tspi->rx_dma_chan);
	return 0;
}