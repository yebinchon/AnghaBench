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
struct TYPE_4__ {int /*<<< orphan*/ * sgl; } ;
struct TYPE_3__ {int /*<<< orphan*/ * sgl; } ;
struct spi_transfer {void* rx_dma; void* tx_dma; TYPE_2__ rx_sg; scalar_t__ rx_buf; TYPE_1__ tx_sg; scalar_t__ tx_buf; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;
struct mtk_spi {int /*<<< orphan*/ * rx_sgl; void* rx_sgl_len; int /*<<< orphan*/ * tx_sgl; void* tx_sgl_len; scalar_t__ base; scalar_t__ num_xfered; struct spi_transfer* cur_transfer; } ;

/* Variables and functions */
 scalar_t__ SPI_CMD_REG ; 
 int SPI_CMD_RX_DMA ; 
 int SPI_CMD_TX_DMA ; 
 int /*<<< orphan*/  FUNC0 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_master*,struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_master*,struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_master*) ; 
 int FUNC5 (scalar_t__) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 struct mtk_spi* FUNC8 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct spi_master *master,
				struct spi_device *spi,
				struct spi_transfer *xfer)
{
	int cmd;
	struct mtk_spi *mdata = FUNC8(master);

	mdata->tx_sgl = NULL;
	mdata->rx_sgl = NULL;
	mdata->tx_sgl_len = 0;
	mdata->rx_sgl_len = 0;
	mdata->cur_transfer = xfer;
	mdata->num_xfered = 0;

	FUNC1(master, xfer);

	cmd = FUNC5(mdata->base + SPI_CMD_REG);
	if (xfer->tx_buf)
		cmd |= SPI_CMD_TX_DMA;
	if (xfer->rx_buf)
		cmd |= SPI_CMD_RX_DMA;
	FUNC9(cmd, mdata->base + SPI_CMD_REG);

	if (xfer->tx_buf)
		mdata->tx_sgl = xfer->tx_sg.sgl;
	if (xfer->rx_buf)
		mdata->rx_sgl = xfer->rx_sg.sgl;

	if (mdata->tx_sgl) {
		xfer->tx_dma = FUNC6(mdata->tx_sgl);
		mdata->tx_sgl_len = FUNC7(mdata->tx_sgl);
	}
	if (mdata->rx_sgl) {
		xfer->rx_dma = FUNC6(mdata->rx_sgl);
		mdata->rx_sgl_len = FUNC7(mdata->rx_sgl);
	}

	FUNC4(master);
	FUNC3(master);
	FUNC2(master, xfer);
	FUNC0(master);

	return 1;
}