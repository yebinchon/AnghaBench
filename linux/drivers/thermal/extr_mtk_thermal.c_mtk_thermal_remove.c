
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mtk_thermal {int clk_auxadc; int clk_peri_therm; } ;


 int clk_disable_unprepare (int ) ;
 struct mtk_thermal* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mtk_thermal_remove(struct platform_device *pdev)
{
 struct mtk_thermal *mt = platform_get_drvdata(pdev);

 clk_disable_unprepare(mt->clk_peri_therm);
 clk_disable_unprepare(mt->clk_auxadc);

 return 0;
}
