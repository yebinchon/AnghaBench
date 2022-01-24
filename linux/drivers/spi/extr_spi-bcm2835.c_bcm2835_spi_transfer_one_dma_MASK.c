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
typedef  int u32 ;
struct spi_transfer {int dummy; } ;
struct spi_device {size_t chip_select; } ;
struct spi_controller {int /*<<< orphan*/  dma_rx; int /*<<< orphan*/  dma_tx; } ;
struct bcm2835_spi {int tx_len; int tx_dma_active; int rx_dma_active; scalar_t__ rx_buf; int /*<<< orphan*/ * clear_rx_desc; int /*<<< orphan*/  fill_tx_desc; scalar_t__ tx_buf; int /*<<< orphan*/  count_transfer_dma; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  BCM2835_SPI_CS ; 
 int BCM2835_SPI_CS_DMAEN ; 
 int BCM2835_SPI_CS_TA ; 
 int /*<<< orphan*/  BCM2835_SPI_DLEN ; 
 int FUNC0 (struct spi_controller*,struct spi_device*,struct spi_transfer*,struct bcm2835_spi*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_controller*,struct spi_transfer*,struct bcm2835_spi*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm2835_spi*) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm2835_spi*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 struct bcm2835_spi* FUNC13 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC14(struct spi_controller *ctlr,
					struct spi_device *spi,
					struct spi_transfer *tfr,
					u32 cs)
{
	struct bcm2835_spi *bs = FUNC13(ctlr);
	dma_cookie_t cookie;
	int ret;

	/* update usage statistics */
	bs->count_transfer_dma++;

	/*
	 * Transfer first few bytes without DMA if length of first TX or RX
	 * sglist entry is not a multiple of 4 bytes (hardware limitation).
	 */
	FUNC2(ctlr, tfr, bs, cs);

	/* setup tx-DMA */
	if (bs->tx_buf) {
		ret = FUNC0(ctlr, spi, tfr, bs, true);
	} else {
		cookie = FUNC8(bs->fill_tx_desc);
		ret = FUNC7(cookie);
	}
	if (ret)
		goto err_reset_hw;

	/* set the DMA length */
	FUNC4(bs, BCM2835_SPI_DLEN, bs->tx_len);

	/* start the HW */
	FUNC4(bs, BCM2835_SPI_CS,
		   cs | BCM2835_SPI_CS_TA | BCM2835_SPI_CS_DMAEN);

	bs->tx_dma_active = true;
	FUNC12();

	/* start TX early */
	FUNC6(ctlr->dma_tx);

	/* setup rx-DMA late - to run transfers while
	 * mapping of the rx buffers still takes place
	 * this saves 10us or more.
	 */
	if (bs->rx_buf) {
		ret = FUNC0(ctlr, spi, tfr, bs, false);
	} else {
		cookie = FUNC8(bs->clear_rx_desc[spi->chip_select]);
		ret = FUNC7(cookie);
	}
	if (ret) {
		/* need to reset on errors */
		FUNC10(ctlr->dma_tx);
		bs->tx_dma_active = false;
		goto err_reset_hw;
	}

	/* start rx dma late */
	FUNC6(ctlr->dma_rx);
	bs->rx_dma_active = true;
	FUNC11();

	/*
	 * In case of a very short TX-only transfer, bcm2835_spi_dma_tx_done()
	 * may run before RX DMA is issued.  Terminate RX DMA if so.
	 */
	if (!bs->rx_buf && !bs->tx_dma_active &&
	    FUNC5(&bs->rx_dma_active, true, false)) {
		FUNC9(ctlr->dma_rx);
		FUNC1(ctlr);
	}

	/* wait for wakeup in framework */
	return 1;

err_reset_hw:
	FUNC1(ctlr);
	FUNC3(bs);
	return ret;
}