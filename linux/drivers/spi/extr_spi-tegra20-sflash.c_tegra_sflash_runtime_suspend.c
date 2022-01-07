
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_sflash_data {int clk; } ;
struct spi_master {int dummy; } ;
struct device {int dummy; } ;


 int SPI_COMMAND ;
 int clk_disable_unprepare (int ) ;
 struct spi_master* dev_get_drvdata (struct device*) ;
 struct tegra_sflash_data* spi_master_get_devdata (struct spi_master*) ;
 int tegra_sflash_readl (struct tegra_sflash_data*,int ) ;

__attribute__((used)) static int tegra_sflash_runtime_suspend(struct device *dev)
{
 struct spi_master *master = dev_get_drvdata(dev);
 struct tegra_sflash_data *tsd = spi_master_get_devdata(master);


 tegra_sflash_readl(tsd, SPI_COMMAND);

 clk_disable_unprepare(tsd->clk);
 return 0;
}
