
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct platform_device {int dev; } ;
struct mtk_spi {int dummy; } ;


 int mtk_spi_reset (struct mtk_spi*) ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 struct mtk_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int mtk_spi_remove(struct platform_device *pdev)
{
 struct spi_master *master = platform_get_drvdata(pdev);
 struct mtk_spi *mdata = spi_master_get_devdata(master);

 pm_runtime_disable(&pdev->dev);

 mtk_spi_reset(mdata);

 return 0;
}
