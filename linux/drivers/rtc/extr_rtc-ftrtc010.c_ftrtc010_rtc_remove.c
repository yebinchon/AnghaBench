
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ftrtc010_rtc {int pclk; int extclk; } ;


 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 struct ftrtc010_rtc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ftrtc010_rtc_remove(struct platform_device *pdev)
{
 struct ftrtc010_rtc *rtc = platform_get_drvdata(pdev);

 if (!IS_ERR(rtc->extclk))
  clk_disable_unprepare(rtc->extclk);
 if (!IS_ERR(rtc->pclk))
  clk_disable_unprepare(rtc->pclk);

 return 0;
}
