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
struct spi_message {struct spi_device* spi; } ;
struct spi_device {int mode; int /*<<< orphan*/  max_speed_hz; } ;
struct spi_controller {int dummy; } ;
struct rspi_data {int /*<<< orphan*/  sppcr; int /*<<< orphan*/  spcmd; int /*<<< orphan*/  max_speed_hz; } ;

/* Variables and functions */
 int /*<<< orphan*/  RSPI_SPCR ; 
 int /*<<< orphan*/  SPCMD_CPHA ; 
 int /*<<< orphan*/  SPCMD_CPOL ; 
 int /*<<< orphan*/  SPCMD_SSLKP ; 
 int SPCR_SPE ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_LOOP ; 
 int SPI_RX_DUAL ; 
 int SPI_RX_QUAD ; 
 int SPI_TX_DUAL ; 
 int SPI_TX_QUAD ; 
 int /*<<< orphan*/  SPPCR_SPLP ; 
 int FUNC0 (struct rspi_data*,struct spi_message*) ; 
 int FUNC1 (struct rspi_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rspi_data*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rspi_data*,int) ; 
 struct rspi_data* FUNC4 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC5(struct spi_controller *ctlr,
				struct spi_message *msg)
{
	struct rspi_data *rspi = FUNC4(ctlr);
	struct spi_device *spi = msg->spi;
	int ret;

	rspi->max_speed_hz = spi->max_speed_hz;

	rspi->spcmd = SPCMD_SSLKP;
	if (spi->mode & SPI_CPOL)
		rspi->spcmd |= SPCMD_CPOL;
	if (spi->mode & SPI_CPHA)
		rspi->spcmd |= SPCMD_CPHA;

	/* CMOS output mode and MOSI signal from previous transfer */
	rspi->sppcr = 0;
	if (spi->mode & SPI_LOOP)
		rspi->sppcr |= SPPCR_SPLP;

	FUNC3(rspi, 8);

	if (msg->spi->mode &
	    (SPI_TX_DUAL | SPI_TX_QUAD | SPI_RX_DUAL | SPI_RX_QUAD)) {
		/* Setup sequencer for messages with multiple transfer modes */
		ret = FUNC0(rspi, msg);
		if (ret < 0)
			return ret;
	}

	/* Enable SPI function in master mode */
	FUNC2(rspi, FUNC1(rspi, RSPI_SPCR) | SPCR_SPE, RSPI_SPCR);
	return 0;
}