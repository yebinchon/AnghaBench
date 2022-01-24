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
struct spi_transfer {unsigned long speed_hz; } ;
struct spi_device {int /*<<< orphan*/  master; } ;
struct cdns_spi {unsigned long speed_hz; int /*<<< orphan*/  ref_clk; } ;

/* Variables and functions */
 int CDNS_SPI_BAUD_DIV_MAX ; 
 int CDNS_SPI_BAUD_DIV_MIN ; 
 int CDNS_SPI_BAUD_DIV_SHIFT ; 
 int /*<<< orphan*/  CDNS_SPI_CR ; 
 int CDNS_SPI_CR_BAUD_DIV ; 
 int FUNC0 (struct cdns_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cdns_spi*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 struct cdns_spi* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct spi_device *spi,
				       struct spi_transfer *transfer)
{
	struct cdns_spi *xspi = FUNC3(spi->master);
	u32 ctrl_reg, baud_rate_val;
	unsigned long frequency;

	frequency = FUNC2(xspi->ref_clk);

	ctrl_reg = FUNC0(xspi, CDNS_SPI_CR);

	/* Set the clock frequency */
	if (xspi->speed_hz != transfer->speed_hz) {
		/* first valid value is 1 */
		baud_rate_val = CDNS_SPI_BAUD_DIV_MIN;
		while ((baud_rate_val < CDNS_SPI_BAUD_DIV_MAX) &&
		       (frequency / (2 << baud_rate_val)) > transfer->speed_hz)
			baud_rate_val++;

		ctrl_reg &= ~CDNS_SPI_CR_BAUD_DIV;
		ctrl_reg |= baud_rate_val << CDNS_SPI_BAUD_DIV_SHIFT;

		xspi->speed_hz = frequency / (2 << baud_rate_val);
	}
	FUNC1(xspi, CDNS_SPI_CR, ctrl_reg);
}