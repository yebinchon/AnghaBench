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
struct spi_master {int /*<<< orphan*/  xfer_completion; } ;
struct bcm2835aux_spi {int* cntl; int /*<<< orphan*/  rx_len; int /*<<< orphan*/  tx_len; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  BCM2835_AUX_SPI_CNTL1 ; 
 int BCM2835_AUX_SPI_CNTL1_IDLE ; 
 int BCM2835_AUX_SPI_CNTL1_TXEMPTY ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int FUNC0 (struct bcm2835aux_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835aux_spi*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835aux_spi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct bcm2835aux_spi* FUNC4 (struct spi_master*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct spi_master *master = dev_id;
	struct bcm2835aux_spi *bs = FUNC4(master);

	/* IRQ may be shared, so return if our interrupts are disabled */
	if (!(FUNC0(bs, BCM2835_AUX_SPI_CNTL1) &
	      (BCM2835_AUX_SPI_CNTL1_TXEMPTY | BCM2835_AUX_SPI_CNTL1_IDLE)))
		return IRQ_NONE;

	/* do common fifo handling */
	FUNC1(bs);

	if (!bs->tx_len) {
		/* disable tx fifo empty interrupt */
		FUNC2(bs, BCM2835_AUX_SPI_CNTL1, bs->cntl[1] |
			BCM2835_AUX_SPI_CNTL1_IDLE);
	}

	/* and if rx_len is 0 then disable interrupts and wake up completion */
	if (!bs->rx_len) {
		FUNC2(bs, BCM2835_AUX_SPI_CNTL1, bs->cntl[1]);
		FUNC3(&master->xfer_completion);
	}

	return IRQ_HANDLED;
}