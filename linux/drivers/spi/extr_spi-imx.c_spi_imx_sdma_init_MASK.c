#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct spi_master {int /*<<< orphan*/  max_dma_len; int /*<<< orphan*/  can_dma; int /*<<< orphan*/ * dma_rx; int /*<<< orphan*/ * dma_tx; } ;
struct TYPE_6__ {TYPE_2__* master; } ;
struct spi_imx_data {int wml; TYPE_3__ bitbang; int /*<<< orphan*/  dma_tx_completion; int /*<<< orphan*/  dma_rx_completion; TYPE_1__* devtype_data; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int fifo_size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_SDMA_BD_BYTES ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int SPI_MASTER_MUST_RX ; 
 int SPI_MASTER_MUST_TX ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 void* FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  spi_imx_can_dma ; 
 int /*<<< orphan*/  FUNC6 (struct spi_imx_data*) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct spi_imx_data *spi_imx,
			     struct spi_master *master)
{
	int ret;

	/* use pio mode for i.mx6dl chip TKT238285 */
	if (FUNC5("fsl,imx6dl"))
		return 0;

	spi_imx->wml = spi_imx->devtype_data->fifo_size / 2;

	/* Prepare for TX DMA: */
	master->dma_tx = FUNC3(dev, "tx");
	if (FUNC0(master->dma_tx)) {
		ret = FUNC1(master->dma_tx);
		FUNC2(dev, "can't get the TX DMA channel, error %d!\n", ret);
		master->dma_tx = NULL;
		goto err;
	}

	/* Prepare for RX : */
	master->dma_rx = FUNC3(dev, "rx");
	if (FUNC0(master->dma_rx)) {
		ret = FUNC1(master->dma_rx);
		FUNC2(dev, "can't get the RX DMA channel, error %d\n", ret);
		master->dma_rx = NULL;
		goto err;
	}

	FUNC4(&spi_imx->dma_rx_completion);
	FUNC4(&spi_imx->dma_tx_completion);
	master->can_dma = spi_imx_can_dma;
	master->max_dma_len = MAX_SDMA_BD_BYTES;
	spi_imx->bitbang.master->flags = SPI_MASTER_MUST_RX |
					 SPI_MASTER_MUST_TX;

	return 0;
err:
	FUNC6(spi_imx);
	return ret;
}