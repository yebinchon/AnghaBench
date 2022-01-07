
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct platform_device {int dev; } ;
struct omap1_spi100k {int ick; int fck; } ;


 int clk_disable_unprepare (int ) ;
 int platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 struct spi_master* spi_master_get (int ) ;
 struct omap1_spi100k* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int omap1_spi100k_remove(struct platform_device *pdev)
{
 struct spi_master *master = spi_master_get(platform_get_drvdata(pdev));
 struct omap1_spi100k *spi100k = spi_master_get_devdata(master);

 pm_runtime_disable(&pdev->dev);

 clk_disable_unprepare(spi100k->fck);
 clk_disable_unprepare(spi100k->ick);

 return 0;
}
