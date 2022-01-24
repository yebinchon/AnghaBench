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
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;
struct a3700_spi {int buf_len; int byte_len; int* tx_buf; int rx_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  A3700_SPI_DATA_IN_REG ; 
 int /*<<< orphan*/  A3700_SPI_DATA_OUT_REG ; 
 int /*<<< orphan*/  A3700_SPI_IF_CTRL_REG ; 
 int A3700_SPI_XFER_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct a3700_spi*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct a3700_spi*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_master*) ; 
 struct a3700_spi* FUNC5 (struct spi_master*) ; 
 int FUNC6 (struct a3700_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct a3700_spi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct spi_master *master,
				  struct spi_device *spi,
				  struct spi_transfer *xfer)
{
	struct a3700_spi *a3700_spi = FUNC5(master);
	u32 val;

	/* Disable FIFO mode */
	FUNC1(a3700_spi, false);

	while (a3700_spi->buf_len) {

		/* When we have less than 4 bytes to transfer, switch to 1 byte
		 * mode. This is reset after each transfer
		 */
		if (a3700_spi->buf_len < 4)
			FUNC0(a3700_spi, 1);

		if (a3700_spi->byte_len == 1)
			val = *a3700_spi->tx_buf;
		else
			val = *(u32 *)a3700_spi->tx_buf;

		FUNC7(a3700_spi, A3700_SPI_DATA_OUT_REG, val);

		/* Wait for all the data to be shifted in / out */
		while (!(FUNC6(a3700_spi, A3700_SPI_IF_CTRL_REG) &
				A3700_SPI_XFER_DONE))
			FUNC2();

		val = FUNC6(a3700_spi, A3700_SPI_DATA_IN_REG);

		FUNC3(a3700_spi->rx_buf, &val, a3700_spi->byte_len);

		a3700_spi->buf_len -= a3700_spi->byte_len;
		a3700_spi->tx_buf += a3700_spi->byte_len;
		a3700_spi->rx_buf += a3700_spi->byte_len;

	}

	FUNC4(master);

	return 0;
}