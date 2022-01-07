
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dim2_hdm {scalar_t__ clk_speed; int clk; int clk_pll; } ;


 scalar_t__ CLK_2048FS ;
 int clk_disable_unprepare (int ) ;
 struct dim2_hdm* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void fsl_mx6_disable(struct platform_device *pdev)
{
 struct dim2_hdm *dev = platform_get_drvdata(pdev);

 if (dev->clk_speed >= CLK_2048FS)
  clk_disable_unprepare(dev->clk_pll);

 clk_disable_unprepare(dev->clk);
}
