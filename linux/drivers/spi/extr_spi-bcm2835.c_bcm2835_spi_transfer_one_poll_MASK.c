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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct spi_controller {int dummy; } ;
struct bcm2835_spi {int /*<<< orphan*/  count_transfer_irq_after_polling; scalar_t__ rx_len; int /*<<< orphan*/  tx_len; int /*<<< orphan*/  count_transfer_polling; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM2835_SPI_CS ; 
 int BCM2835_SPI_CS_TA ; 
 int /*<<< orphan*/  BCM2835_SPI_FIFO_SIZE ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct bcm2835_spi*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_controller*) ; 
 int FUNC2 (struct spi_controller*,struct spi_device*,struct spi_transfer*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm2835_spi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm2835_spi*) ; 
 int /*<<< orphan*/  FUNC5 (struct bcm2835_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int jiffies ; 
 int polling_limit_us ; 
 struct bcm2835_spi* FUNC7 (struct spi_controller*) ; 
 scalar_t__ FUNC8 (int,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct spi_controller *ctlr,
					 struct spi_device *spi,
					 struct spi_transfer *tfr,
					 u32 cs)
{
	struct bcm2835_spi *bs = FUNC7(ctlr);
	unsigned long timeout;

	/* update usage statistics */
	bs->count_transfer_polling++;

	/* enable HW block without interrupts */
	FUNC3(bs, BCM2835_SPI_CS, cs | BCM2835_SPI_CS_TA);

	/* fill in the fifo before timeout calculations
	 * if we are interrupted here, then the data is
	 * getting transferred by the HW while we are interrupted
	 */
	FUNC5(bs, BCM2835_SPI_FIFO_SIZE);

	/* set the timeout to at least 2 jiffies */
	timeout = jiffies + 2 + HZ * polling_limit_us / 1000000;

	/* loop until finished the transfer */
	while (bs->rx_len) {
		/* fill in tx fifo with remaining data */
		FUNC4(bs);

		/* read from fifo as much as possible */
		FUNC0(bs);

		/* if there is still data pending to read
		 * then check the timeout
		 */
		if (bs->rx_len && FUNC8(jiffies, timeout)) {
			FUNC6(&spi->dev,
					    "timeout period reached: jiffies: %lu remaining tx/rx: %d/%d - falling back to interrupt mode\n",
					    jiffies - timeout,
					    bs->tx_len, bs->rx_len);
			/* fall back to interrupt mode */

			/* update usage statistics */
			bs->count_transfer_irq_after_polling++;

			return FUNC2(ctlr, spi,
							    tfr, cs, false);
		}
	}

	/* Transfer complete - reset SPI HW */
	FUNC1(ctlr);
	/* and return without waiting for completion */
	return 0;
}