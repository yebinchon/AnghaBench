
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_spi_data {int def_command1_reg; int command1_reg; int use_hw_based_cs; } ;
struct spi_device {int mode; scalar_t__ cs_gpiod; int master; } ;


 int SPI_COMMAND1 ;
 int SPI_CS_HIGH ;
 int SPI_CS_SW_VAL ;
 int gpiod_set_value (scalar_t__,int ) ;
 struct tegra_spi_data* spi_master_get_devdata (int ) ;
 int tegra_spi_writel (struct tegra_spi_data*,int ,int ) ;

__attribute__((used)) static void tegra_spi_transfer_end(struct spi_device *spi)
{
 struct tegra_spi_data *tspi = spi_master_get_devdata(spi->master);
 int cs_val = (spi->mode & SPI_CS_HIGH) ? 0 : 1;


 if (spi->cs_gpiod)
  gpiod_set_value(spi->cs_gpiod, 0);

 if (!tspi->use_hw_based_cs) {
  if (cs_val)
   tspi->command1_reg |= SPI_CS_SW_VAL;
  else
   tspi->command1_reg &= ~SPI_CS_SW_VAL;
  tegra_spi_writel(tspi, tspi->command1_reg, SPI_COMMAND1);
 }

 tegra_spi_writel(tspi, tspi->def_command1_reg, SPI_COMMAND1);
}
