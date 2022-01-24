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
struct sg_table {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct spi_transfer {int /*<<< orphan*/  len; struct sg_table rx_sg; struct sg_table tx_sg; } ;
struct spi_controller {int /*<<< orphan*/  dma_rx; int /*<<< orphan*/  dma_tx; } ;
struct fsl_lpspi_data {int slave_aborted; int /*<<< orphan*/  dev; int /*<<< orphan*/  dma_rx_completion; int /*<<< orphan*/  dma_tx_completion; int /*<<< orphan*/  is_slave; } ;
struct dma_async_tx_descriptor {void* callback_param; int /*<<< orphan*/  callback; } ;

/* Variables and functions */
 int DMA_CTRL_ACK ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int DMA_PREP_INTERRUPT ; 
 int EINTR ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (struct fsl_lpspi_data*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct spi_controller*) ; 
 int /*<<< orphan*/  fsl_lpspi_dma_rx_callback ; 
 int /*<<< orphan*/  fsl_lpspi_dma_tx_callback ; 
 int /*<<< orphan*/  FUNC8 (struct fsl_lpspi_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC12(struct spi_controller *controller,
				struct fsl_lpspi_data *fsl_lpspi,
				struct spi_transfer *transfer)
{
	struct dma_async_tx_descriptor *desc_tx, *desc_rx;
	unsigned long transfer_timeout;
	unsigned long timeout;
	struct sg_table *tx = &transfer->tx_sg, *rx = &transfer->rx_sg;
	int ret;

	ret = FUNC7(controller);
	if (ret)
		return ret;

	desc_rx = FUNC3(controller->dma_rx,
				rx->sgl, rx->nents, DMA_DEV_TO_MEM,
				DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
	if (!desc_rx)
		return -EINVAL;

	desc_rx->callback = fsl_lpspi_dma_rx_callback;
	desc_rx->callback_param = (void *)fsl_lpspi;
	FUNC4(desc_rx);
	FUNC9(&fsl_lpspi->dma_rx_completion);
	FUNC2(controller->dma_rx);

	desc_tx = FUNC3(controller->dma_tx,
				tx->sgl, tx->nents, DMA_MEM_TO_DEV,
				DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
	if (!desc_tx) {
		FUNC5(controller->dma_tx);
		return -EINVAL;
	}

	desc_tx->callback = fsl_lpspi_dma_tx_callback;
	desc_tx->callback_param = (void *)fsl_lpspi;
	FUNC4(desc_tx);
	FUNC9(&fsl_lpspi->dma_tx_completion);
	FUNC2(controller->dma_tx);

	fsl_lpspi->slave_aborted = false;

	if (!fsl_lpspi->is_slave) {
		transfer_timeout = FUNC6(fsl_lpspi,
							       transfer->len);

		/* Wait eDMA to finish the data transfer.*/
		timeout = FUNC11(&fsl_lpspi->dma_tx_completion,
						      transfer_timeout);
		if (!timeout) {
			FUNC1(fsl_lpspi->dev, "I/O Error in DMA TX\n");
			FUNC5(controller->dma_tx);
			FUNC5(controller->dma_rx);
			FUNC8(fsl_lpspi);
			return -ETIMEDOUT;
		}

		timeout = FUNC11(&fsl_lpspi->dma_rx_completion,
						      transfer_timeout);
		if (!timeout) {
			FUNC1(fsl_lpspi->dev, "I/O Error in DMA RX\n");
			FUNC5(controller->dma_tx);
			FUNC5(controller->dma_rx);
			FUNC8(fsl_lpspi);
			return -ETIMEDOUT;
		}
	} else {
		if (FUNC10(&fsl_lpspi->dma_tx_completion) ||
			fsl_lpspi->slave_aborted) {
			FUNC0(fsl_lpspi->dev,
				"I/O Error in DMA TX interrupted\n");
			FUNC5(controller->dma_tx);
			FUNC5(controller->dma_rx);
			FUNC8(fsl_lpspi);
			return -EINTR;
		}

		if (FUNC10(&fsl_lpspi->dma_rx_completion) ||
			fsl_lpspi->slave_aborted) {
			FUNC0(fsl_lpspi->dev,
				"I/O Error in DMA RX interrupted\n");
			FUNC5(controller->dma_tx);
			FUNC5(controller->dma_rx);
			FUNC8(fsl_lpspi);
			return -EINTR;
		}
	}

	FUNC8(fsl_lpspi);

	return 0;
}