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
struct tegra_spi_data {int /*<<< orphan*/  def_command1_reg; int /*<<< orphan*/  command1_reg; int /*<<< orphan*/  use_hw_based_cs; } ;
struct spi_device {int mode; scalar_t__ cs_gpiod; int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPI_COMMAND1 ; 
 int SPI_CS_HIGH ; 
 int /*<<< orphan*/  SPI_CS_SW_VAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct tegra_spi_data* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_spi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct spi_device *spi)
{
	struct tegra_spi_data *tspi = FUNC1(spi->master);
	int cs_val = (spi->mode & SPI_CS_HIGH) ? 0 : 1;

	/* GPIO based chip select control */
	if (spi->cs_gpiod)
		FUNC0(spi->cs_gpiod, 0);

	if (!tspi->use_hw_based_cs) {
		if (cs_val)
			tspi->command1_reg |= SPI_CS_SW_VAL;
		else
			tspi->command1_reg &= ~SPI_CS_SW_VAL;
		FUNC2(tspi, tspi->command1_reg, SPI_COMMAND1);
	}

	FUNC2(tspi, tspi->def_command1_reg, SPI_COMMAND1);
}