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
typedef  int u32 ;
struct spi_transfer {scalar_t__ len; } ;
struct spi_master {TYPE_1__* cur_msg; int /*<<< orphan*/  dev; } ;
struct spi_device {int dummy; } ;
struct ep93xx_spi {scalar_t__ mmio; scalar_t__ dma_rx; scalar_t__ tx; scalar_t__ rx; } ;
struct TYPE_2__ {struct spi_transfer* state; } ;

/* Variables and functions */
 scalar_t__ SPI_FIFO_SIZE ; 
 scalar_t__ SSPCR1 ; 
 int SSPCR1_RIE ; 
 int SSPCR1_RORIE ; 
 int SSPCR1_TIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct spi_master*,struct spi_device*,struct spi_transfer*) ; 
 int FUNC2 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_master*) ; 
 int FUNC4 (scalar_t__) ; 
 struct ep93xx_spi* FUNC5 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct spi_master *master,
				   struct spi_device *spi,
				   struct spi_transfer *xfer)
{
	struct ep93xx_spi *espi = FUNC5(master);
	u32 val;
	int ret;

	ret = FUNC1(master, spi, xfer);
	if (ret) {
		FUNC0(&master->dev, "failed to setup chip for transfer\n");
		return ret;
	}

	master->cur_msg->state = xfer;
	espi->rx = 0;
	espi->tx = 0;

	/*
	 * There is no point of setting up DMA for the transfers which will
	 * fit into the FIFO and can be transferred with a single interrupt.
	 * So in these cases we will be using PIO and don't bother for DMA.
	 */
	if (espi->dma_rx && xfer->len > SPI_FIFO_SIZE)
		return FUNC2(master);

	/* Using PIO so prime the TX FIFO and enable interrupts */
	FUNC3(master);

	val = FUNC4(espi->mmio + SSPCR1);
	val |= (SSPCR1_RORIE | SSPCR1_TIE | SSPCR1_RIE);
	FUNC6(val, espi->mmio + SSPCR1);

	/* signal that we need to wait for completion */
	return 1;
}