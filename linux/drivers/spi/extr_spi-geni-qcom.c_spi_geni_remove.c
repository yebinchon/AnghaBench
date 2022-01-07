
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct spi_geni_master {int irq; } ;
struct platform_device {int dev; } ;


 int free_irq (int ,struct spi_master*) ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 struct spi_geni_master* spi_master_get_devdata (struct spi_master*) ;
 int spi_unregister_master (struct spi_master*) ;

__attribute__((used)) static int spi_geni_remove(struct platform_device *pdev)
{
 struct spi_master *spi = platform_get_drvdata(pdev);
 struct spi_geni_master *mas = spi_master_get_devdata(spi);


 spi_unregister_master(spi);

 free_irq(mas->irq, spi);
 pm_runtime_disable(&pdev->dev);
 return 0;
}
