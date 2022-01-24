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
struct tegra_slink_data {int command_reg; int def_command_reg; int /*<<< orphan*/  command2_reg; int /*<<< orphan*/  def_command2_reg; } ;
struct spi_message {struct spi_device* spi; } ;
struct spi_master {int dummy; } ;
struct spi_device {int mode; int /*<<< orphan*/  chip_select; } ;

/* Variables and functions */
 int SLINK_CK_SDA ; 
 int SLINK_CS_SW ; 
 int SLINK_CS_VALUE ; 
 int SLINK_IDLE_SCLK_DRIVE_HIGH ; 
 int SLINK_IDLE_SCLK_DRIVE_LOW ; 
 int SLINK_MODES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 struct tegra_slink_data* FUNC1 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_slink_data*) ; 

__attribute__((used)) static int FUNC3(struct spi_master *master,
				       struct spi_message *msg)
{
	struct tegra_slink_data *tspi = FUNC1(master);
	struct spi_device *spi = msg->spi;

	FUNC2(tspi);

	tspi->command_reg = tspi->def_command_reg;
	tspi->command_reg |= SLINK_CS_SW | SLINK_CS_VALUE;

	tspi->command2_reg = tspi->def_command2_reg;
	tspi->command2_reg |= FUNC0(spi->chip_select);

	tspi->command_reg &= ~SLINK_MODES;
	if (spi->mode & SPI_CPHA)
		tspi->command_reg |= SLINK_CK_SDA;

	if (spi->mode & SPI_CPOL)
		tspi->command_reg |= SLINK_IDLE_SCLK_DRIVE_HIGH;
	else
		tspi->command_reg |= SLINK_IDLE_SCLK_DRIVE_LOW;

	return 0;
}