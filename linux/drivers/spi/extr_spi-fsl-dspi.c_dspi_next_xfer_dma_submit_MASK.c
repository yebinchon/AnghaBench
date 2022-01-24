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
struct fsl_dspi_dma {int curr_xfer_len; int /*<<< orphan*/  chan_rx; int /*<<< orphan*/  chan_tx; int /*<<< orphan*/  cmd_rx_complete; int /*<<< orphan*/  cmd_tx_complete; TYPE_2__* rx_desc; int /*<<< orphan*/  rx_dma_phys; TYPE_2__* tx_desc; int /*<<< orphan*/  tx_dma_phys; int /*<<< orphan*/ * tx_dma_buf; } ;
struct fsl_dspi {struct fsl_dspi_dma* dma; int /*<<< orphan*/  ctlr; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct fsl_dspi* callback_param; int /*<<< orphan*/  callback; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_COMPLETION_TIMEOUT ; 
 int DMA_CTRL_ACK ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int DMA_PREP_INTERRUPT ; 
 int DMA_SLAVE_BUSWIDTH_4_BYTES ; 
 int EINVAL ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fsl_dspi*) ; 
 int /*<<< orphan*/  dspi_rx_dma_callback ; 
 int /*<<< orphan*/  dspi_tx_dma_callback ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct fsl_dspi *dspi)
{
	struct device *dev = &dspi->pdev->dev;
	struct fsl_dspi_dma *dma = dspi->dma;
	int time_left;
	int i;

	for (i = 0; i < dma->curr_xfer_len; i++)
		dspi->dma->tx_dma_buf[i] = FUNC6(dspi);

	dma->tx_desc = FUNC3(dma->chan_tx,
					dma->tx_dma_phys,
					dma->curr_xfer_len *
					DMA_SLAVE_BUSWIDTH_4_BYTES,
					DMA_MEM_TO_DEV,
					DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
	if (!dma->tx_desc) {
		FUNC0(dev, "Not able to get desc for DMA xfer\n");
		return -EIO;
	}

	dma->tx_desc->callback = dspi_tx_dma_callback;
	dma->tx_desc->callback_param = dspi;
	if (FUNC2(FUNC4(dma->tx_desc))) {
		FUNC0(dev, "DMA submit failed\n");
		return -EINVAL;
	}

	dma->rx_desc = FUNC3(dma->chan_rx,
					dma->rx_dma_phys,
					dma->curr_xfer_len *
					DMA_SLAVE_BUSWIDTH_4_BYTES,
					DMA_DEV_TO_MEM,
					DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
	if (!dma->rx_desc) {
		FUNC0(dev, "Not able to get desc for DMA xfer\n");
		return -EIO;
	}

	dma->rx_desc->callback = dspi_rx_dma_callback;
	dma->rx_desc->callback_param = dspi;
	if (FUNC2(FUNC4(dma->rx_desc))) {
		FUNC0(dev, "DMA submit failed\n");
		return -EINVAL;
	}

	FUNC7(&dspi->dma->cmd_rx_complete);
	FUNC7(&dspi->dma->cmd_tx_complete);

	FUNC1(dma->chan_rx);
	FUNC1(dma->chan_tx);

	if (FUNC8(dspi->ctlr)) {
		FUNC9(&dspi->dma->cmd_rx_complete);
		return 0;
	}

	time_left = FUNC10(&dspi->dma->cmd_tx_complete,
						DMA_COMPLETION_TIMEOUT);
	if (time_left == 0) {
		FUNC0(dev, "DMA tx timeout\n");
		FUNC5(dma->chan_tx);
		FUNC5(dma->chan_rx);
		return -ETIMEDOUT;
	}

	time_left = FUNC10(&dspi->dma->cmd_rx_complete,
						DMA_COMPLETION_TIMEOUT);
	if (time_left == 0) {
		FUNC0(dev, "DMA rx timeout\n");
		FUNC5(dma->chan_tx);
		FUNC5(dma->chan_rx);
		return -ETIMEDOUT;
	}

	return 0;
}