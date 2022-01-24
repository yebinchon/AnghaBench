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
struct spi_controller {int /*<<< orphan*/  max_dma_len; int /*<<< orphan*/  can_dma; int /*<<< orphan*/ * dma_rx; int /*<<< orphan*/ * dma_tx; } ;
struct fsl_lpspi_data {int /*<<< orphan*/  dma_tx_completion; int /*<<< orphan*/  dma_rx_completion; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSL_LPSPI_MAX_EDMA_BYTES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 void* FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  fsl_lpspi_can_dma ; 
 int /*<<< orphan*/  FUNC4 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev,
			      struct fsl_lpspi_data *fsl_lpspi,
			      struct spi_controller *controller)
{
	int ret;

	/* Prepare for TX DMA: */
	controller->dma_tx = FUNC3(dev, "tx");
	if (FUNC0(controller->dma_tx)) {
		ret = FUNC1(controller->dma_tx);
		FUNC2(dev, "can't get the TX DMA channel, error %d!\n", ret);
		controller->dma_tx = NULL;
		goto err;
	}

	/* Prepare for RX DMA: */
	controller->dma_rx = FUNC3(dev, "rx");
	if (FUNC0(controller->dma_rx)) {
		ret = FUNC1(controller->dma_rx);
		FUNC2(dev, "can't get the RX DMA channel, error %d\n", ret);
		controller->dma_rx = NULL;
		goto err;
	}

	FUNC5(&fsl_lpspi->dma_rx_completion);
	FUNC5(&fsl_lpspi->dma_tx_completion);
	controller->can_dma = fsl_lpspi_can_dma;
	controller->max_dma_len = FSL_LPSPI_MAX_EDMA_BYTES;

	return 0;
err:
	FUNC4(controller);
	return ret;
}