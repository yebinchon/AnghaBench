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
struct spi_transfer {unsigned int len; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;
struct sifive_spi {int /*<<< orphan*/  fifo_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIFIVE_SPI_IP_RXWM ; 
 int /*<<< orphan*/  SIFIVE_SPI_IP_TXWM ; 
 int /*<<< orphan*/  SIFIVE_SPI_REG_RXMARK ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sifive_spi*,struct spi_device*,struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC2 (struct sifive_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sifive_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sifive_spi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sifive_spi*,int /*<<< orphan*/ ,unsigned int) ; 
 struct sifive_spi* FUNC6 (struct spi_master*) ; 

__attribute__((used)) static int
FUNC7(struct spi_master *master, struct spi_device *device,
			struct spi_transfer *t)
{
	struct sifive_spi *spi = FUNC6(master);
	int poll = FUNC1(spi, device, t);
	const u8 *tx_ptr = t->tx_buf;
	u8 *rx_ptr = t->rx_buf;
	unsigned int remaining_words = t->len;

	while (remaining_words) {
		unsigned int n_words = FUNC0(remaining_words, spi->fifo_depth);
		unsigned int i;

		/* Enqueue n_words for transmission */
		for (i = 0; i < n_words; i++)
			FUNC3(spi, tx_ptr++);

		if (rx_ptr) {
			/* Wait for transmission + reception to complete */
			FUNC5(spi, SIFIVE_SPI_REG_RXMARK,
					 n_words - 1);
			FUNC4(spi, SIFIVE_SPI_IP_RXWM, poll);

			/* Read out all the data from the RX FIFO */
			for (i = 0; i < n_words; i++)
				FUNC2(spi, rx_ptr++);
		} else {
			/* Wait for transmission to complete */
			FUNC4(spi, SIFIVE_SPI_IP_TXWM, poll);
		}

		remaining_words -= n_words;
	}

	return 0;
}