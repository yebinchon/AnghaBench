
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct a21_wdt_drv {int * gpios; } ;


 size_t GPIO_WD_ENAB ;
 struct a21_wdt_drv* dev_get_drvdata (int *) ;
 int gpiod_set_value (int ,int ) ;

__attribute__((used)) static void a21_wdt_shutdown(struct platform_device *pdev)
{
 struct a21_wdt_drv *drv = dev_get_drvdata(&pdev->dev);

 gpiod_set_value(drv->gpios[GPIO_WD_ENAB], 0);
}
