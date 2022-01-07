
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ux500_glue {int clk; int musb; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int platform_device_unregister (int ) ;
 struct ux500_glue* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ux500_remove(struct platform_device *pdev)
{
 struct ux500_glue *glue = platform_get_drvdata(pdev);

 platform_device_unregister(glue->musb);
 clk_disable_unprepare(glue->clk);

 return 0;
}
