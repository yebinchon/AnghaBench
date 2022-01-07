
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct platform_device {int dev; } ;
struct dln2_spi {int dummy; } ;


 int dev_err (int *,char*) ;
 scalar_t__ dln2_spi_enable (struct dln2_spi*,int) ;
 int platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 struct spi_master* spi_master_get (int ) ;
 struct dln2_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int dln2_spi_remove(struct platform_device *pdev)
{
 struct spi_master *master = spi_master_get(platform_get_drvdata(pdev));
 struct dln2_spi *dln2 = spi_master_get_devdata(master);

 pm_runtime_disable(&pdev->dev);

 if (dln2_spi_enable(dln2, 0) < 0)
  dev_err(&pdev->dev, "Failed to disable SPI module\n");

 return 0;
}
