
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mtk_rtc {int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct mtk_rtc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mtk_rtc_remove(struct platform_device *pdev)
{
 struct mtk_rtc *hw = platform_get_drvdata(pdev);

 clk_disable_unprepare(hw->clk);

 return 0;
}
