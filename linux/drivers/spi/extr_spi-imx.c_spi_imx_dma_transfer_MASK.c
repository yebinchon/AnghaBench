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
struct sg_table {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct spi_transfer {int len; int /*<<< orphan*/  bits_per_word; struct sg_table rx_sg; struct sg_table tx_sg; } ;
struct spi_master {int /*<<< orphan*/  dma_rx; int /*<<< orphan*/  dev; int /*<<< orphan*/  dma_tx; } ;
struct TYPE_3__ {struct spi_master* master; } ;
struct spi_imx_data {unsigned int wml; TYPE_2__* devtype_data; int /*<<< orphan*/  dma_rx_completion; int /*<<< orphan*/ * dev; int /*<<< orphan*/  dma_tx_completion; TYPE_1__ bitbang; } ;
struct scatterlist {int dummy; } ;
struct dma_async_tx_descriptor {void* callback_param; int /*<<< orphan*/  callback; } ;
struct TYPE_4__ {int fifo_size; int /*<<< orphan*/  (* reset ) (struct spi_imx_data*) ;int /*<<< orphan*/  (* setup_wml ) (struct spi_imx_data*) ;} ;

/* Variables and functions */
 int DMA_CTRL_ACK ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int DMA_PREP_INTERRUPT ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (struct scatterlist*) ; 
 struct scatterlist* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC9 (struct spi_imx_data*,int) ; 
 int FUNC10 (struct spi_master*) ; 
 int /*<<< orphan*/  spi_imx_dma_rx_callback ; 
 int /*<<< orphan*/  spi_imx_dma_tx_callback ; 
 int /*<<< orphan*/  FUNC11 (struct spi_imx_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct spi_imx_data*) ; 
 unsigned long FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC14(struct spi_imx_data *spi_imx,
				struct spi_transfer *transfer)
{
	struct dma_async_tx_descriptor *desc_tx, *desc_rx;
	unsigned long transfer_timeout;
	unsigned long timeout;
	struct spi_master *master = spi_imx->bitbang.master;
	struct sg_table *tx = &transfer->tx_sg, *rx = &transfer->rx_sg;
	struct scatterlist *last_sg = FUNC7(rx->sgl, rx->nents);
	unsigned int bytes_per_word, i;
	int ret;

	/* Get the right burst length from the last sg to ensure no tail data */
	bytes_per_word = FUNC8(transfer->bits_per_word);
	for (i = spi_imx->devtype_data->fifo_size / 2; i > 0; i--) {
		if (!(FUNC6(last_sg) % (i * bytes_per_word)))
			break;
	}
	/* Use 1 as wml in case no available burst length got */
	if (i == 0)
		i = 1;

	spi_imx->wml =  i;

	ret = FUNC10(master);
	if (ret)
		return ret;

	if (!spi_imx->devtype_data->setup_wml) {
		FUNC0(spi_imx->dev, "No setup_wml()?\n");
		return -EINVAL;
	}
	spi_imx->devtype_data->setup_wml(spi_imx);

	/*
	 * The TX DMA setup starts the transfer, so make sure RX is configured
	 * before TX.
	 */
	desc_rx = FUNC2(master->dma_rx,
				rx->sgl, rx->nents, DMA_DEV_TO_MEM,
				DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
	if (!desc_rx)
		return -EINVAL;

	desc_rx->callback = spi_imx_dma_rx_callback;
	desc_rx->callback_param = (void *)spi_imx;
	FUNC3(desc_rx);
	FUNC5(&spi_imx->dma_rx_completion);
	FUNC1(master->dma_rx);

	desc_tx = FUNC2(master->dma_tx,
				tx->sgl, tx->nents, DMA_MEM_TO_DEV,
				DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
	if (!desc_tx) {
		FUNC4(master->dma_tx);
		return -EINVAL;
	}

	desc_tx->callback = spi_imx_dma_tx_callback;
	desc_tx->callback_param = (void *)spi_imx;
	FUNC3(desc_tx);
	FUNC5(&spi_imx->dma_tx_completion);
	FUNC1(master->dma_tx);

	transfer_timeout = FUNC9(spi_imx, transfer->len);

	/* Wait SDMA to finish the data transfer.*/
	timeout = FUNC13(&spi_imx->dma_tx_completion,
						transfer_timeout);
	if (!timeout) {
		FUNC0(spi_imx->dev, "I/O Error in DMA TX\n");
		FUNC4(master->dma_tx);
		FUNC4(master->dma_rx);
		return -ETIMEDOUT;
	}

	timeout = FUNC13(&spi_imx->dma_rx_completion,
					      transfer_timeout);
	if (!timeout) {
		FUNC0(&master->dev, "I/O Error in DMA RX\n");
		spi_imx->devtype_data->reset(spi_imx);
		FUNC4(master->dma_rx);
		return -ETIMEDOUT;
	}

	return transfer->len;
}