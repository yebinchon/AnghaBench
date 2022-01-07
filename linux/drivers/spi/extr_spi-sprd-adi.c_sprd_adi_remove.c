
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_adi {int restart_handler; } ;
struct spi_controller {int dummy; } ;
struct platform_device {int dev; } ;


 struct spi_controller* dev_get_drvdata (int *) ;
 struct sprd_adi* spi_controller_get_devdata (struct spi_controller*) ;
 int unregister_restart_handler (int *) ;

__attribute__((used)) static int sprd_adi_remove(struct platform_device *pdev)
{
 struct spi_controller *ctlr = dev_get_drvdata(&pdev->dev);
 struct sprd_adi *sadi = spi_controller_get_devdata(ctlr);

 unregister_restart_handler(&sadi->restart_handler);
 return 0;
}
