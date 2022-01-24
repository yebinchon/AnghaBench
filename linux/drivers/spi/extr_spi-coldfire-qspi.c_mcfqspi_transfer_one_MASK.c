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
typedef  int u16 ;
struct spi_transfer {int bits_per_word; int len; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  tx_buf; int /*<<< orphan*/  speed_hz; } ;
struct spi_master {int dummy; } ;
struct spi_device {int mode; } ;
struct mcfqspi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCFQSPI_QIR_SPIFE ; 
 int MCFQSPI_QMR_CPHA ; 
 int MCFQSPI_QMR_CPOL ; 
 int MCFQSPI_QMR_MSTR ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mcfqspi*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mcfqspi*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mcfqspi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mcfqspi*,int) ; 
 struct mcfqspi* FUNC5 (struct spi_master*) ; 

__attribute__((used)) static int FUNC6(struct spi_master *master,
				struct spi_device *spi,
				struct spi_transfer *t)
{
	struct mcfqspi *mcfqspi = FUNC5(master);
	u16 qmr = MCFQSPI_QMR_MSTR;

	qmr |= t->bits_per_word << 10;
	if (spi->mode & SPI_CPHA)
		qmr |= MCFQSPI_QMR_CPHA;
	if (spi->mode & SPI_CPOL)
		qmr |= MCFQSPI_QMR_CPOL;
	qmr |= FUNC0(t->speed_hz);
	FUNC4(mcfqspi, qmr);

	FUNC3(mcfqspi, MCFQSPI_QIR_SPIFE);
	if (t->bits_per_word == 8)
		FUNC2(mcfqspi, t->len, t->tx_buf, t->rx_buf);
	else
		FUNC1(mcfqspi, t->len / 2, t->tx_buf,
				       t->rx_buf);
	FUNC3(mcfqspi, 0);

	return 0;
}