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
struct spi_transfer {int bits_per_word; unsigned int tx_nbits; unsigned int rx_nbits; scalar_t__ tx_buf; scalar_t__ rx_buf; } ;
struct spi_master {int dummy; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct a3700_spi {int buf_len; int xmit_data; scalar_t__ tx_buf; scalar_t__ rx_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  A3700_SPI_DATA_OUT_REG ; 
 int /*<<< orphan*/  A3700_SPI_IF_CFG_REG ; 
 int /*<<< orphan*/  A3700_SPI_IF_DIN_CNT_REG ; 
 int /*<<< orphan*/  A3700_SPI_RFIFO_RDY ; 
 int A3700_SPI_RW_EN ; 
 int A3700_SPI_TIMEOUT ; 
 int /*<<< orphan*/  A3700_SPI_WFIFO_EMPTY ; 
 int /*<<< orphan*/  A3700_SPI_WFIFO_RDY ; 
 int /*<<< orphan*/  A3700_SPI_XFER_RDY ; 
 int A3700_SPI_XFER_START ; 
 int A3700_SPI_XFER_STOP ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct a3700_spi*) ; 
 int /*<<< orphan*/  FUNC1 (struct a3700_spi*,int) ; 
 int FUNC2 (struct a3700_spi*) ; 
 int /*<<< orphan*/  FUNC3 (struct a3700_spi*,unsigned int) ; 
 int FUNC4 (struct a3700_spi*) ; 
 int /*<<< orphan*/  FUNC5 (struct a3700_spi*) ; 
 int /*<<< orphan*/  FUNC6 (struct a3700_spi*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct a3700_spi*) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct spi_master*) ; 
 struct a3700_spi* FUNC11 (struct spi_master*) ; 
 int FUNC12 (struct a3700_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct a3700_spi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct spi_master *master,
				  struct spi_device *spi,
				  struct spi_transfer *xfer)
{
	struct a3700_spi *a3700_spi = FUNC11(master);
	int ret = 0, timeout = A3700_SPI_TIMEOUT;
	unsigned int nbits = 0, byte_len;
	u32 val;

	/* Make sure we use FIFO mode */
	FUNC1(a3700_spi, true);

	/* Configure FIFO thresholds */
	byte_len = xfer->bits_per_word >> 3;
	FUNC3(a3700_spi, byte_len);

	if (xfer->tx_buf)
		nbits = xfer->tx_nbits;
	else if (xfer->rx_buf)
		nbits = xfer->rx_nbits;

	FUNC6(a3700_spi, nbits, xfer->rx_buf ? true : false);

	/* Flush the FIFOs */
	FUNC0(a3700_spi);

	/* Transfer first bytes of data when buffer is not 4-byte aligned */
	FUNC5(a3700_spi);

	if (xfer->rx_buf) {
		/* Clear WFIFO, since it's last 2 bytes are shifted out during
		 * a read operation
		 */
		FUNC13(a3700_spi, A3700_SPI_DATA_OUT_REG, 0);

		/* Set read data length */
		FUNC13(a3700_spi, A3700_SPI_IF_DIN_CNT_REG,
			     a3700_spi->buf_len);
		/* Start READ transfer */
		val = FUNC12(a3700_spi, A3700_SPI_IF_CFG_REG);
		val &= ~A3700_SPI_RW_EN;
		val |= A3700_SPI_XFER_START;
		FUNC13(a3700_spi, A3700_SPI_IF_CFG_REG, val);
	} else if (xfer->tx_buf) {
		/* Start Write transfer */
		val = FUNC12(a3700_spi, A3700_SPI_IF_CFG_REG);
		val |= (A3700_SPI_XFER_START | A3700_SPI_RW_EN);
		FUNC13(a3700_spi, A3700_SPI_IF_CFG_REG, val);

		/*
		 * If there are data to be written to the SPI device, xmit_data
		 * flag is set true; otherwise the instruction in SPI_INSTR does
		 * not require data to be written to the SPI device, then
		 * xmit_data flag is set false.
		 */
		a3700_spi->xmit_data = (a3700_spi->buf_len != 0);
	}

	while (a3700_spi->buf_len) {
		if (a3700_spi->tx_buf) {
			/* Wait wfifo ready */
			if (!FUNC8(spi,
						     A3700_SPI_WFIFO_RDY)) {
				FUNC9(&spi->dev,
					"wait wfifo ready timed out\n");
				ret = -ETIMEDOUT;
				goto error;
			}
			/* Fill up the wfifo */
			ret = FUNC4(a3700_spi);
			if (ret)
				goto error;
		} else if (a3700_spi->rx_buf) {
			/* Wait rfifo ready */
			if (!FUNC8(spi,
						     A3700_SPI_RFIFO_RDY)) {
				FUNC9(&spi->dev,
					"wait rfifo ready timed out\n");
				ret = -ETIMEDOUT;
				goto error;
			}
			/* Drain out the rfifo */
			ret = FUNC2(a3700_spi);
			if (ret)
				goto error;
		}
	}

	/*
	 * Stop a write transfer in fifo mode:
	 *	- wait all the bytes in wfifo to be shifted out
	 *	 - set XFER_STOP bit
	 *	- wait XFER_START bit clear
	 *	- clear XFER_STOP bit
	 * Stop a read transfer in fifo mode:
	 *	- the hardware is to reset the XFER_START bit
	 *	   after the number of bytes indicated in DIN_CNT
	 *	   register
	 *	- just wait XFER_START bit clear
	 */
	if (a3700_spi->tx_buf) {
		if (a3700_spi->xmit_data) {
			/*
			 * If there are data written to the SPI device, wait
			 * until SPI_WFIFO_EMPTY is 1 to wait for all data to
			 * transfer out of write FIFO.
			 */
			if (!FUNC8(spi,
						     A3700_SPI_WFIFO_EMPTY)) {
				FUNC9(&spi->dev, "wait wfifo empty timed out\n");
				return -ETIMEDOUT;
			}
		}

		if (!FUNC8(spi, A3700_SPI_XFER_RDY)) {
			FUNC9(&spi->dev, "wait xfer ready timed out\n");
			return -ETIMEDOUT;
		}

		val = FUNC12(a3700_spi, A3700_SPI_IF_CFG_REG);
		val |= A3700_SPI_XFER_STOP;
		FUNC13(a3700_spi, A3700_SPI_IF_CFG_REG, val);
	}

	while (--timeout) {
		val = FUNC12(a3700_spi, A3700_SPI_IF_CFG_REG);
		if (!(val & A3700_SPI_XFER_START))
			break;
		FUNC14(1);
	}

	if (timeout == 0) {
		FUNC9(&spi->dev, "wait transfer start clear timed out\n");
		ret = -ETIMEDOUT;
		goto error;
	}

	val &= ~A3700_SPI_XFER_STOP;
	FUNC13(a3700_spi, A3700_SPI_IF_CFG_REG, val);
	goto out;

error:
	FUNC7(a3700_spi);
out:
	FUNC10(master);

	return ret;
}