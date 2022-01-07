
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omap2430_glue {int dev; int musb; } ;


 int platform_device_unregister (int ) ;
 struct omap2430_glue* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;

__attribute__((used)) static int omap2430_remove(struct platform_device *pdev)
{
 struct omap2430_glue *glue = platform_get_drvdata(pdev);

 platform_device_unregister(glue->musb);
 pm_runtime_disable(glue->dev);

 return 0;
}
