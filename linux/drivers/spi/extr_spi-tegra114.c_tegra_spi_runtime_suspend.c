
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_spi_data {int clk; } ;
struct spi_master {int dummy; } ;
struct device {int dummy; } ;


 int SPI_COMMAND1 ;
 int clk_disable_unprepare (int ) ;
 struct spi_master* dev_get_drvdata (struct device*) ;
 struct tegra_spi_data* spi_master_get_devdata (struct spi_master*) ;
 int tegra_spi_readl (struct tegra_spi_data*,int ) ;

__attribute__((used)) static int tegra_spi_runtime_suspend(struct device *dev)
{
 struct spi_master *master = dev_get_drvdata(dev);
 struct tegra_spi_data *tspi = spi_master_get_devdata(master);


 tegra_spi_readl(tspi, SPI_COMMAND1);

 clk_disable_unprepare(tspi->clk);
 return 0;
}
