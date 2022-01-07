
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct mxs_ssp {int clk; } ;
struct mxs_spi {struct mxs_ssp ssp; } ;
struct device {int dummy; } ;


 int clk_prepare_enable (int ) ;
 struct spi_master* dev_get_drvdata (struct device*) ;
 int pinctrl_pm_select_default_state (struct device*) ;
 int pinctrl_pm_select_idle_state (struct device*) ;
 struct mxs_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int mxs_spi_runtime_resume(struct device *dev)
{
 struct spi_master *master = dev_get_drvdata(dev);
 struct mxs_spi *spi = spi_master_get_devdata(master);
 struct mxs_ssp *ssp = &spi->ssp;
 int ret;

 ret = pinctrl_pm_select_default_state(dev);
 if (ret)
  return ret;

 ret = clk_prepare_enable(ssp->clk);
 if (ret)
  pinctrl_pm_select_idle_state(dev);

 return ret;
}
