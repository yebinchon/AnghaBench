
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dim2_hdm {scalar_t__ io_base; int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct dim2_hdm* platform_get_drvdata (struct platform_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void rcar_m3_disable(struct platform_device *pdev)
{
 struct dim2_hdm *dev = platform_get_drvdata(pdev);

 clk_disable_unprepare(dev->clk);


 writel(0x0, dev->io_base + 0x600);
}
