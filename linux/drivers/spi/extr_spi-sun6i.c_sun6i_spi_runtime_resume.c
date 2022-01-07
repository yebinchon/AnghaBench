
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun6i_spi {int hclk; int mclk; int rstc; } ;
struct spi_master {int dummy; } ;
struct device {int dummy; } ;


 int SUN6I_GBL_CTL_BUS_ENABLE ;
 int SUN6I_GBL_CTL_MASTER ;
 int SUN6I_GBL_CTL_REG ;
 int SUN6I_GBL_CTL_TP ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*) ;
 struct spi_master* dev_get_drvdata (struct device*) ;
 int reset_control_deassert (int ) ;
 struct sun6i_spi* spi_master_get_devdata (struct spi_master*) ;
 int sun6i_spi_write (struct sun6i_spi*,int ,int) ;

__attribute__((used)) static int sun6i_spi_runtime_resume(struct device *dev)
{
 struct spi_master *master = dev_get_drvdata(dev);
 struct sun6i_spi *sspi = spi_master_get_devdata(master);
 int ret;

 ret = clk_prepare_enable(sspi->hclk);
 if (ret) {
  dev_err(dev, "Couldn't enable AHB clock\n");
  goto out;
 }

 ret = clk_prepare_enable(sspi->mclk);
 if (ret) {
  dev_err(dev, "Couldn't enable module clock\n");
  goto err;
 }

 ret = reset_control_deassert(sspi->rstc);
 if (ret) {
  dev_err(dev, "Couldn't deassert the device from reset\n");
  goto err2;
 }

 sun6i_spi_write(sspi, SUN6I_GBL_CTL_REG,
   SUN6I_GBL_CTL_BUS_ENABLE | SUN6I_GBL_CTL_MASTER | SUN6I_GBL_CTL_TP);

 return 0;

err2:
 clk_disable_unprepare(sspi->mclk);
err:
 clk_disable_unprepare(sspi->hclk);
out:
 return ret;
}
