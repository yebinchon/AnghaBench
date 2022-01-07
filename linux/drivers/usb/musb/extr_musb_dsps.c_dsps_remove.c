
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dsps_glue {int usbss_base; int musb; } ;


 int iounmap (int ) ;
 int platform_device_unregister (int ) ;
 struct dsps_glue* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int dsps_remove(struct platform_device *pdev)
{
 struct dsps_glue *glue = platform_get_drvdata(pdev);

 platform_device_unregister(glue->musb);

 pm_runtime_disable(&pdev->dev);
 iounmap(glue->usbss_base);

 return 0;
}
