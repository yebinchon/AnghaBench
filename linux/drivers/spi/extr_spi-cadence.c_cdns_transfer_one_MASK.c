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
struct spi_transfer {int len; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  tx_buf; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;
struct cdns_spi {int tx_bytes; int rx_bytes; int /*<<< orphan*/  rxbuf; int /*<<< orphan*/  txbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDNS_SPI_IER ; 
 int /*<<< orphan*/  CDNS_SPI_IXR_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct cdns_spi*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_device*,struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC2 (struct cdns_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cdns_spi* FUNC3 (struct spi_master*) ; 

__attribute__((used)) static int FUNC4(struct spi_master *master,
			     struct spi_device *spi,
			     struct spi_transfer *transfer)
{
	struct cdns_spi *xspi = FUNC3(master);

	xspi->txbuf = transfer->tx_buf;
	xspi->rxbuf = transfer->rx_buf;
	xspi->tx_bytes = transfer->len;
	xspi->rx_bytes = transfer->len;

	FUNC1(spi, transfer);

	FUNC0(xspi);

	FUNC2(xspi, CDNS_SPI_IER, CDNS_SPI_IXR_DEFAULT);
	return transfer->len;
}