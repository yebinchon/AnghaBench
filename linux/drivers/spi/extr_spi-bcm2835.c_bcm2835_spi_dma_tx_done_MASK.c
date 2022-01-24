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
struct spi_controller {int /*<<< orphan*/  xfer_completion; int /*<<< orphan*/  dma_rx; } ;
struct bcm2835_spi {size_t chip_select; int tx_dma_active; int /*<<< orphan*/  rx_dma_active; int /*<<< orphan*/ * clear_rx_cs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM2835_SPI_CS ; 
 int BCM2835_SPI_CS_DONE ; 
 int FUNC0 (struct bcm2835_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_spi*) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm2835_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct bcm2835_spi* FUNC8 (struct spi_controller*) ; 

__attribute__((used)) static void FUNC9(void *data)
{
	struct spi_controller *ctlr = data;
	struct bcm2835_spi *bs = FUNC8(ctlr);

	/* busy-wait for TX FIFO to empty */
	while (!(FUNC0(bs, BCM2835_SPI_CS) & BCM2835_SPI_CS_DONE))
		FUNC3(bs, BCM2835_SPI_CS,
			   bs->clear_rx_cs[bs->chip_select]);

	bs->tx_dma_active = false;
	FUNC7();

	/*
	 * In case of a very short transfer, RX DMA may not have been
	 * issued yet.  The onus is then on bcm2835_spi_transfer_one_dma()
	 * to terminate it immediately after issuing.
	 */
	if (FUNC4(&bs->rx_dma_active, true, false))
		FUNC6(ctlr->dma_rx);

	FUNC2(bs);
	FUNC1(ctlr);
	FUNC5(&ctlr->xfer_completion);
}