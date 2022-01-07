
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synquacer_spi {int clk; int dev; } ;
struct spi_master {int dummy; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 struct synquacer_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int synquacer_spi_remove(struct platform_device *pdev)
{
 struct spi_master *master = platform_get_drvdata(pdev);
 struct synquacer_spi *sspi = spi_master_get_devdata(master);

 pm_runtime_disable(sspi->dev);

 clk_disable_unprepare(sspi->clk);

 return 0;
}
