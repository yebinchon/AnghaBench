
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct spi_imx_data {int clk_per; int clk_ipg; scalar_t__ base; int bitbang; } ;
struct platform_device {int dummy; } ;


 scalar_t__ MXC_CSPICTRL ;
 int clk_disable (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_enable (int ) ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 int spi_bitbang_stop (int *) ;
 int spi_imx_sdma_exit (struct spi_imx_data*) ;
 struct spi_imx_data* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int spi_imx_remove(struct platform_device *pdev)
{
 struct spi_master *master = platform_get_drvdata(pdev);
 struct spi_imx_data *spi_imx = spi_master_get_devdata(master);
 int ret;

 spi_bitbang_stop(&spi_imx->bitbang);

 ret = clk_enable(spi_imx->clk_per);
 if (ret)
  return ret;

 ret = clk_enable(spi_imx->clk_ipg);
 if (ret) {
  clk_disable(spi_imx->clk_per);
  return ret;
 }

 writel(0, spi_imx->base + MXC_CSPICTRL);
 clk_disable_unprepare(spi_imx->clk_ipg);
 clk_disable_unprepare(spi_imx->clk_per);
 spi_imx_sdma_exit(spi_imx);
 spi_master_put(master);

 return 0;
}
