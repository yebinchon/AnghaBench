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
struct spi_transfer {int /*<<< orphan*/  len; void* rx_dma; scalar_t__ rx_buf; void* tx_dma; scalar_t__ tx_buf; } ;
struct mpc8xxx_spi {int map_tx_dma; int map_rx_dma; void* rx; void* tx_dma; int /*<<< orphan*/  count; struct spi_transfer* xfer_in_progress; void* rx_dma; scalar_t__ tx; void* dma_dummy_rx; void* dma_dummy_tx; struct fsl_spi_reg* reg_base; struct device* dev; } ;
struct fsl_spi_reg {int /*<<< orphan*/  mask; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SPIE_RXB ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 void* FUNC1 (struct device*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mpc8xxx_spi*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC6(struct mpc8xxx_spi *mspi,
		     struct spi_transfer *t, bool is_dma_mapped)
{
	struct device *dev = mspi->dev;
	struct fsl_spi_reg *reg_base = mspi->reg_base;

	if (is_dma_mapped) {
		mspi->map_tx_dma = 0;
		mspi->map_rx_dma = 0;
	} else {
		mspi->map_tx_dma = 1;
		mspi->map_rx_dma = 1;
	}

	if (!t->tx_buf) {
		mspi->tx_dma = mspi->dma_dummy_tx;
		mspi->map_tx_dma = 0;
	}

	if (!t->rx_buf) {
		mspi->rx_dma = mspi->dma_dummy_rx;
		mspi->map_rx_dma = 0;
	}

	if (mspi->map_tx_dma) {
		void *nonconst_tx = (void *)mspi->tx; /* shut up gcc */

		mspi->tx_dma = FUNC1(dev, nonconst_tx, t->len,
					      DMA_TO_DEVICE);
		if (FUNC2(dev, mspi->tx_dma)) {
			FUNC0(dev, "unable to map tx dma\n");
			return -ENOMEM;
		}
	} else if (t->tx_buf) {
		mspi->tx_dma = t->tx_dma;
	}

	if (mspi->map_rx_dma) {
		mspi->rx_dma = FUNC1(dev, mspi->rx, t->len,
					      DMA_FROM_DEVICE);
		if (FUNC2(dev, mspi->rx_dma)) {
			FUNC0(dev, "unable to map rx dma\n");
			goto err_rx_dma;
		}
	} else if (t->rx_buf) {
		mspi->rx_dma = t->rx_dma;
	}

	/* enable rx ints */
	FUNC5(&reg_base->mask, SPIE_RXB);

	mspi->xfer_in_progress = t;
	mspi->count = t->len;

	/* start CPM transfers */
	FUNC4(mspi);

	return 0;

err_rx_dma:
	if (mspi->map_tx_dma)
		FUNC3(dev, mspi->tx_dma, t->len, DMA_TO_DEVICE);
	return -ENOMEM;
}