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
struct spi_transfer {int dummy; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;
struct bcm2835aux_spi {int pending; scalar_t__ tx_len; int /*<<< orphan*/ * cntl; int /*<<< orphan*/  count_transfer_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM2835_AUX_SPI_CNTL0 ; 
 int /*<<< orphan*/  BCM2835_AUX_SPI_CNTL1 ; 
 int /*<<< orphan*/  BCM2835_AUX_SPI_STAT ; 
 int BCM2835_AUX_SPI_STAT_TX_FULL ; 
 int FUNC0 (struct spi_master*,struct spi_device*,struct spi_transfer*) ; 
 int FUNC1 (struct bcm2835aux_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835aux_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm2835aux_spi*) ; 
 struct bcm2835aux_spi* FUNC4 (struct spi_master*) ; 

__attribute__((used)) static int FUNC5(struct spi_master *master,
					   struct spi_device *spi,
					   struct spi_transfer *tfr)
{
	struct bcm2835aux_spi *bs = FUNC4(master);

	/* update statistics */
	bs->count_transfer_irq++;

	/* fill in registers and fifos before enabling interrupts */
	FUNC2(bs, BCM2835_AUX_SPI_CNTL1, bs->cntl[1]);
	FUNC2(bs, BCM2835_AUX_SPI_CNTL0, bs->cntl[0]);

	/* fill in tx fifo with data before enabling interrupts */
	while ((bs->tx_len) &&
	       (bs->pending < 12) &&
	       (!(FUNC1(bs, BCM2835_AUX_SPI_STAT) &
		  BCM2835_AUX_SPI_STAT_TX_FULL))) {
		FUNC3(bs);
	}

	/* now run the interrupt mode */
	return FUNC0(master, spi, tfr);
}