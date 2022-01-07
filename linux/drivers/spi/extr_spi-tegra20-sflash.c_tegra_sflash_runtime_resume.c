
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_sflash_data {int dev; int clk; } ;
struct spi_master {int dummy; } ;
struct device {int dummy; } ;


 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;
 struct spi_master* dev_get_drvdata (struct device*) ;
 struct tegra_sflash_data* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int tegra_sflash_runtime_resume(struct device *dev)
{
 struct spi_master *master = dev_get_drvdata(dev);
 struct tegra_sflash_data *tsd = spi_master_get_devdata(master);
 int ret;

 ret = clk_prepare_enable(tsd->clk);
 if (ret < 0) {
  dev_err(tsd->dev, "clk_prepare failed: %d\n", ret);
  return ret;
 }
 return 0;
}
