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
struct TYPE_2__ {void** dma_chan; } ;
struct sprd_spi {TYPE_1__ dma; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 size_t SPRD_SPI_RX ; 
 size_t SPRD_SPI_TX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct sprd_spi *ss)
{
	ss->dma.dma_chan[SPRD_SPI_RX] = FUNC4(ss->dev, "rx_chn");
	if (FUNC0(ss->dma.dma_chan[SPRD_SPI_RX])) {
		if (FUNC1(ss->dma.dma_chan[SPRD_SPI_RX]) == -EPROBE_DEFER)
			return FUNC1(ss->dma.dma_chan[SPRD_SPI_RX]);

		FUNC2(ss->dev, "request RX DMA channel failed!\n");
		return FUNC1(ss->dma.dma_chan[SPRD_SPI_RX]);
	}

	ss->dma.dma_chan[SPRD_SPI_TX]  = FUNC4(ss->dev, "tx_chn");
	if (FUNC0(ss->dma.dma_chan[SPRD_SPI_TX])) {
		if (FUNC1(ss->dma.dma_chan[SPRD_SPI_TX]) == -EPROBE_DEFER)
			return FUNC1(ss->dma.dma_chan[SPRD_SPI_TX]);

		FUNC2(ss->dev, "request TX DMA channel failed!\n");
		FUNC3(ss->dma.dma_chan[SPRD_SPI_RX]);
		return FUNC1(ss->dma.dma_chan[SPRD_SPI_TX]);
	}

	return 0;
}