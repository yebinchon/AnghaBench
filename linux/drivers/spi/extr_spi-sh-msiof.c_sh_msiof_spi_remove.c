
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_msiof_spi_priv {int dummy; } ;
struct platform_device {int dev; } ;


 struct sh_msiof_spi_priv* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int sh_msiof_release_dma (struct sh_msiof_spi_priv*) ;

__attribute__((used)) static int sh_msiof_spi_remove(struct platform_device *pdev)
{
 struct sh_msiof_spi_priv *p = platform_get_drvdata(pdev);

 sh_msiof_release_dma(p);
 pm_runtime_disable(&pdev->dev);
 return 0;
}
