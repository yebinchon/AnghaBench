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
struct spi_transfer {unsigned int speed_hz; unsigned int bits_per_word; scalar_t__ rx_buf; scalar_t__ tx_buf; } ;
struct spi_device {int dummy; } ;
struct lantiq_ssc_spi {unsigned int bits_per_word; unsigned int speed_hz; } ;

/* Variables and functions */
 int /*<<< orphan*/  LTQ_SPI_CON ; 
 int /*<<< orphan*/  LTQ_SPI_CON_RXOFF ; 
 int /*<<< orphan*/  LTQ_SPI_CON_TXOFF ; 
 int /*<<< orphan*/  FUNC0 (struct lantiq_ssc_spi*) ; 
 int /*<<< orphan*/  FUNC1 (struct lantiq_ssc_spi*) ; 
 int /*<<< orphan*/  FUNC2 (struct lantiq_ssc_spi*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct lantiq_ssc_spi*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct lantiq_ssc_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lantiq_ssc_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct lantiq_ssc_spi *spi,
			      struct spi_device *spidev, struct spi_transfer *t)
{
	unsigned int speed_hz = t->speed_hz;
	unsigned int bits_per_word = t->bits_per_word;
	u32 con;

	if (bits_per_word != spi->bits_per_word ||
		speed_hz != spi->speed_hz) {
		FUNC1(spi);
		FUNC3(spi, speed_hz);
		FUNC2(spi, bits_per_word);
		FUNC0(spi);

		spi->speed_hz = speed_hz;
		spi->bits_per_word = bits_per_word;
	}

	/* Configure transmitter and receiver */
	con = FUNC4(spi, LTQ_SPI_CON);
	if (t->tx_buf)
		con &= ~LTQ_SPI_CON_TXOFF;
	else
		con |= LTQ_SPI_CON_TXOFF;

	if (t->rx_buf)
		con &= ~LTQ_SPI_CON_RXOFF;
	else
		con |= LTQ_SPI_CON_RXOFF;

	FUNC5(spi, con, LTQ_SPI_CON);
}