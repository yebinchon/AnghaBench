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
typedef  int /*<<< orphan*/  u8 ;
struct tiny_spi {scalar_t__ irq; int len; scalar_t__ base; int /*<<< orphan*/  done; scalar_t__ txc; int /*<<< orphan*/ * txp; scalar_t__ rxc; int /*<<< orphan*/ * rxp; } ;
struct spi_transfer {int len; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ TINY_SPI_RXDATA ; 
 scalar_t__ TINY_SPI_STATUS ; 
 int /*<<< orphan*/  TINY_SPI_STATUS_TXE ; 
 int /*<<< orphan*/  TINY_SPI_STATUS_TXR ; 
 scalar_t__ TINY_SPI_TXDATA ; 
 void* FUNC0 (scalar_t__) ; 
 struct tiny_spi* FUNC1 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct tiny_spi*) ; 
 int /*<<< orphan*/  FUNC3 (struct tiny_spi*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi, struct spi_transfer *t)
{
	struct tiny_spi *hw = FUNC1(spi);
	const u8 *txp = t->tx_buf;
	u8 *rxp = t->rx_buf;
	unsigned int i;

	if (hw->irq >= 0) {
		/* use interrupt driven data transfer */
		hw->len = t->len;
		hw->txp = t->tx_buf;
		hw->rxp = t->rx_buf;
		hw->txc = 0;
		hw->rxc = 0;

		/* send the first byte */
		if (t->len > 1) {
			FUNC5(hw->txp ? *hw->txp++ : 0,
			       hw->base + TINY_SPI_TXDATA);
			hw->txc++;
			FUNC5(hw->txp ? *hw->txp++ : 0,
			       hw->base + TINY_SPI_TXDATA);
			hw->txc++;
			FUNC5(TINY_SPI_STATUS_TXR, hw->base + TINY_SPI_STATUS);
		} else {
			FUNC5(hw->txp ? *hw->txp++ : 0,
			       hw->base + TINY_SPI_TXDATA);
			hw->txc++;
			FUNC5(TINY_SPI_STATUS_TXE, hw->base + TINY_SPI_STATUS);
		}

		FUNC4(&hw->done);
	} else {
		/* we need to tighten the transfer loop */
		FUNC5(txp ? *txp++ : 0, hw->base + TINY_SPI_TXDATA);
		for (i = 1; i < t->len; i++) {
			FUNC5(txp ? *txp++ : 0, hw->base + TINY_SPI_TXDATA);

			if (rxp || (i != t->len - 1))
				FUNC3(hw);
			if (rxp)
				*rxp++ = FUNC0(hw->base + TINY_SPI_TXDATA);
		}
		FUNC2(hw);
		if (rxp)
			*rxp++ = FUNC0(hw->base + TINY_SPI_RXDATA);
	}

	return t->len;
}