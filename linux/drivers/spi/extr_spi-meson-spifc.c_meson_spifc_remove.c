
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct platform_device {int dev; } ;
struct meson_spifc {int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 struct meson_spifc* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int meson_spifc_remove(struct platform_device *pdev)
{
 struct spi_master *master = platform_get_drvdata(pdev);
 struct meson_spifc *spifc = spi_master_get_devdata(master);

 pm_runtime_get_sync(&pdev->dev);
 clk_disable_unprepare(spifc->clk);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
