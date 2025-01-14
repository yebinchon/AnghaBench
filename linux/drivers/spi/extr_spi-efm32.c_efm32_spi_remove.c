
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct platform_device {int dummy; } ;
struct efm32_spi_ddata {int clk; int rxirq; int txirq; int bitbang; } ;


 int REG_IEN ;
 int clk_disable_unprepare (int ) ;
 int efm32_spi_write32 (struct efm32_spi_ddata*,int ,int ) ;
 int free_irq (int ,struct efm32_spi_ddata*) ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 int spi_bitbang_stop (int *) ;
 struct efm32_spi_ddata* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;

__attribute__((used)) static int efm32_spi_remove(struct platform_device *pdev)
{
 struct spi_master *master = platform_get_drvdata(pdev);
 struct efm32_spi_ddata *ddata = spi_master_get_devdata(master);

 spi_bitbang_stop(&ddata->bitbang);

 efm32_spi_write32(ddata, 0, REG_IEN);

 free_irq(ddata->txirq, ddata);
 free_irq(ddata->rxirq, ddata);
 clk_disable_unprepare(ddata->clk);
 spi_master_put(master);

 return 0;
}
