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
struct spi_transfer {int /*<<< orphan*/  len; scalar_t__ rx_buf; int /*<<< orphan*/  tx_buf; int /*<<< orphan*/  speed_hz; } ;
struct spi_master {int dummy; } ;
struct spi_device {int mode; } ;
struct mxic_spi {scalar_t__ regs; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 unsigned int OP_BUSW_1 ; 
 unsigned int OP_BUSW_2 ; 
 unsigned int OP_BUSW_4 ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (unsigned int) ; 
 int OP_READ ; 
 int SPI_RX_DUAL ; 
 int SPI_RX_QUAD ; 
 int SPI_TX_DUAL ; 
 int SPI_TX_QUAD ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mxic_spi*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mxic_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_master*) ; 
 struct mxic_spi* FUNC7 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct spi_master *master,
				 struct spi_device *spi,
				 struct spi_transfer *t)
{
	struct mxic_spi *mxic = FUNC7(master);
	unsigned int busw = OP_BUSW_1;
	int ret;

	if (t->rx_buf && t->tx_buf) {
		if (((spi->mode & SPI_TX_QUAD) &&
		     !(spi->mode & SPI_RX_QUAD)) ||
		    ((spi->mode & SPI_TX_DUAL) &&
		     !(spi->mode & SPI_RX_DUAL)))
			return -ENOTSUPP;
	}

	ret = FUNC5(mxic, t->speed_hz);
	if (ret)
		return ret;

	if (t->tx_buf) {
		if (spi->mode & SPI_TX_QUAD)
			busw = OP_BUSW_4;
		else if (spi->mode & SPI_TX_DUAL)
			busw = OP_BUSW_2;
	} else if (t->rx_buf) {
		if (spi->mode & SPI_RX_QUAD)
			busw = OP_BUSW_4;
		else if (spi->mode & SPI_RX_DUAL)
			busw = OP_BUSW_2;
	}

	FUNC8(FUNC1(1) | FUNC0(busw) |
	       FUNC2(busw) | (t->rx_buf ? OP_READ : 0),
	       mxic->regs + FUNC3(0));

	ret = FUNC4(mxic, t->tx_buf, t->rx_buf, t->len);
	if (ret)
		return ret;

	FUNC6(master);

	return 0;
}