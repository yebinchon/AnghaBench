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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct bcm2835aux_spi {int /*<<< orphan*/  count_transfer_irq_after_poll; scalar_t__ rx_len; int /*<<< orphan*/  tx_len; int /*<<< orphan*/ * cntl; int /*<<< orphan*/  count_transfer_polling; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM2835_AUX_SPI_CNTL0 ; 
 int /*<<< orphan*/  BCM2835_AUX_SPI_CNTL1 ; 
 int HZ ; 
 int FUNC0 (struct spi_master*,struct spi_device*,struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835aux_spi*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835aux_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int jiffies ; 
 int polling_limit_us ; 
 struct bcm2835aux_spi* FUNC4 (struct spi_master*) ; 
 scalar_t__ FUNC5 (int,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct spi_master *master,
					    struct spi_device *spi,
					struct spi_transfer *tfr)
{
	struct bcm2835aux_spi *bs = FUNC4(master);
	unsigned long timeout;

	/* update statistics */
	bs->count_transfer_polling++;

	/* configure spi */
	FUNC2(bs, BCM2835_AUX_SPI_CNTL1, bs->cntl[1]);
	FUNC2(bs, BCM2835_AUX_SPI_CNTL0, bs->cntl[0]);

	/* set the timeout to at least 2 jiffies */
	timeout = jiffies + 2 + HZ * polling_limit_us / 1000000;

	/* loop until finished the transfer */
	while (bs->rx_len) {

		/* do common fifo handling */
		FUNC1(bs);

		/* there is still data pending to read check the timeout */
		if (bs->rx_len && FUNC5(jiffies, timeout)) {
			FUNC3(&spi->dev,
					    "timeout period reached: jiffies: %lu remaining tx/rx: %d/%d - falling back to interrupt mode\n",
					    jiffies - timeout,
					    bs->tx_len, bs->rx_len);
			/* forward to interrupt handler */
			bs->count_transfer_irq_after_poll++;
			return FUNC0(master,
							       spi, tfr);
		}
	}

	/* and return without waiting for completion */
	return 0;
}