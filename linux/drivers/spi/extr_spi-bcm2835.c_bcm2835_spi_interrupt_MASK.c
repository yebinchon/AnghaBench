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
struct spi_controller {int /*<<< orphan*/  xfer_completion; } ;
struct bcm2835_spi {int /*<<< orphan*/  rx_len; scalar_t__ tx_len; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  BCM2835_SPI_CS ; 
 int BCM2835_SPI_CS_DONE ; 
 int BCM2835_SPI_CS_RXF ; 
 int BCM2835_SPI_CS_RXR ; 
 int /*<<< orphan*/  BCM2835_SPI_FIFO_SIZE ; 
 int /*<<< orphan*/  BCM2835_SPI_FIFO_SIZE_3_4 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (struct bcm2835_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_spi*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm2835_spi*) ; 
 int /*<<< orphan*/  FUNC5 (struct bcm2835_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct bcm2835_spi* FUNC7 (struct spi_controller*) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct spi_controller *ctlr = dev_id;
	struct bcm2835_spi *bs = FUNC7(ctlr);
	u32 cs = FUNC0(bs, BCM2835_SPI_CS);

	/*
	 * An interrupt is signaled either if DONE is set (TX FIFO empty)
	 * or if RXR is set (RX FIFO >= ¾ full).
	 */
	if (cs & BCM2835_SPI_CS_RXF)
		FUNC2(bs, BCM2835_SPI_FIFO_SIZE);
	else if (cs & BCM2835_SPI_CS_RXR)
		FUNC2(bs, BCM2835_SPI_FIFO_SIZE_3_4);

	if (bs->tx_len && cs & BCM2835_SPI_CS_DONE)
		FUNC5(bs, BCM2835_SPI_FIFO_SIZE);

	/* Read as many bytes as possible from FIFO */
	FUNC1(bs);
	/* Write as many bytes as possible to FIFO */
	FUNC4(bs);

	if (!bs->rx_len) {
		/* Transfer complete - reset SPI HW */
		FUNC3(ctlr);
		/* wake up the framework */
		FUNC6(&ctlr->xfer_completion);
	}

	return IRQ_HANDLED;
}