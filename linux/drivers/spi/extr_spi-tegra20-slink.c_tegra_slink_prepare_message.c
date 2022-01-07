
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_slink_data {int command_reg; int def_command_reg; int command2_reg; int def_command2_reg; } ;
struct spi_message {struct spi_device* spi; } ;
struct spi_master {int dummy; } ;
struct spi_device {int mode; int chip_select; } ;


 int SLINK_CK_SDA ;
 int SLINK_CS_SW ;
 int SLINK_CS_VALUE ;
 int SLINK_IDLE_SCLK_DRIVE_HIGH ;
 int SLINK_IDLE_SCLK_DRIVE_LOW ;
 int SLINK_MODES ;
 int SLINK_SS_EN_CS (int ) ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 struct tegra_slink_data* spi_master_get_devdata (struct spi_master*) ;
 int tegra_slink_clear_status (struct tegra_slink_data*) ;

__attribute__((used)) static int tegra_slink_prepare_message(struct spi_master *master,
           struct spi_message *msg)
{
 struct tegra_slink_data *tspi = spi_master_get_devdata(master);
 struct spi_device *spi = msg->spi;

 tegra_slink_clear_status(tspi);

 tspi->command_reg = tspi->def_command_reg;
 tspi->command_reg |= SLINK_CS_SW | SLINK_CS_VALUE;

 tspi->command2_reg = tspi->def_command2_reg;
 tspi->command2_reg |= SLINK_SS_EN_CS(spi->chip_select);

 tspi->command_reg &= ~SLINK_MODES;
 if (spi->mode & SPI_CPHA)
  tspi->command_reg |= SLINK_CK_SDA;

 if (spi->mode & SPI_CPOL)
  tspi->command_reg |= SLINK_IDLE_SCLK_DRIVE_HIGH;
 else
  tspi->command_reg |= SLINK_IDLE_SCLK_DRIVE_LOW;

 return 0;
}
