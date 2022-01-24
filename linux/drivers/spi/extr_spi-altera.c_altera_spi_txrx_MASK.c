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
struct spi_transfer {int len; int /*<<< orphan*/  bits_per_word; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  tx_buf; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;
struct altera_spi {int count; int bytes_per_word; int len; scalar_t__ irq; scalar_t__ base; int /*<<< orphan*/  imr; int /*<<< orphan*/  rx; int /*<<< orphan*/  tx; } ;

/* Variables and functions */
 scalar_t__ ALTERA_SPI_CONTROL ; 
 int /*<<< orphan*/  ALTERA_SPI_CONTROL_IRRDY_MSK ; 
 scalar_t__ ALTERA_SPI_STATUS ; 
 int ALTERA_SPI_STATUS_RRDY_MSK ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct altera_spi*) ; 
 int /*<<< orphan*/  FUNC2 (struct altera_spi*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_master*) ; 
 struct altera_spi* FUNC6 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct spi_master *master,
	struct spi_device *spi, struct spi_transfer *t)
{
	struct altera_spi *hw = FUNC6(master);

	hw->tx = t->tx_buf;
	hw->rx = t->rx_buf;
	hw->count = 0;
	hw->bytes_per_word = FUNC0(t->bits_per_word, 8);
	hw->len = t->len / hw->bytes_per_word;

	if (hw->irq >= 0) {
		/* enable receive interrupt */
		hw->imr |= ALTERA_SPI_CONTROL_IRRDY_MSK;
		FUNC7(hw->imr, hw->base + ALTERA_SPI_CONTROL);

		/* send the first byte */
		FUNC2(hw);
	} else {
		while (hw->count < hw->len) {
			FUNC2(hw);

			while (!(FUNC4(hw->base + ALTERA_SPI_STATUS) &
				 ALTERA_SPI_STATUS_RRDY_MSK))
				FUNC3();

			FUNC1(hw);
		}
		FUNC5(master);
	}

	return t->len;
}