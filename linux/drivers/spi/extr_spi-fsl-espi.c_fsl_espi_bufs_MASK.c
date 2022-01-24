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
typedef  int /*<<< orphan*/  u32 ;
struct spi_transfer {unsigned int len; scalar_t__ rx_nbits; } ;
struct spi_device {int /*<<< orphan*/  chip_select; int /*<<< orphan*/  master; } ;
struct fsl_espi {unsigned int rxskip; int /*<<< orphan*/  dev; int /*<<< orphan*/  done; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESPI_SPCOM ; 
 int /*<<< orphan*/  ESPI_SPIM ; 
 int ETIMEDOUT ; 
 unsigned int FSL_ESPI_FIFO_SIZE ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPCOM_DO ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  SPIM_DON ; 
 int /*<<< orphan*/  SPIM_RXT ; 
 scalar_t__ SPI_NBITS_DUAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsl_espi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fsl_espi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct fsl_espi* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11(struct spi_device *spi, struct spi_transfer *t)
{
	struct fsl_espi *espi = FUNC7(spi->master);
	unsigned int rx_len = t->len;
	u32 mask, spcom;
	int ret;

	FUNC6(&espi->done);

	/* Set SPCOM[CS] and SPCOM[TRANLEN] field */
	spcom = FUNC0(spi->chip_select);
	spcom |= FUNC2(t->len - 1);

	/* configure RXSKIP mode */
	if (espi->rxskip) {
		spcom |= FUNC1(espi->rxskip);
		rx_len = t->len - espi->rxskip;
		if (t->rx_nbits == SPI_NBITS_DUAL)
			spcom |= SPCOM_DO;
	}

	FUNC5(espi, ESPI_SPCOM, spcom);

	/* enable interrupts */
	mask = SPIM_DON;
	if (rx_len > FSL_ESPI_FIFO_SIZE)
		mask |= SPIM_RXT;
	FUNC5(espi, ESPI_SPIM, mask);

	/* Prevent filling the fifo from getting interrupted */
	FUNC8(&espi->lock);
	FUNC4(espi, 0);
	FUNC9(&espi->lock);

	/* Won't hang up forever, SPI bus sometimes got lost interrupts... */
	ret = FUNC10(&espi->done, 2 * HZ);
	if (ret == 0)
		FUNC3(espi->dev, "Transfer timed out!\n");

	/* disable rx ints */
	FUNC5(espi, ESPI_SPIM, 0);

	return ret == 0 ? -ETIMEDOUT : 0;
}