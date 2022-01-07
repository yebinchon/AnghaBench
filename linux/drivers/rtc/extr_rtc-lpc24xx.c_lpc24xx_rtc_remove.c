
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct lpc24xx_rtc {int clk_reg; int clk_rtc; } ;


 int LPC178X_CCALEN ;
 int LPC24XX_ALARM_DISABLE ;
 int LPC24XX_AMR ;
 int LPC24XX_CCR ;
 int LPC24XX_CIIR ;
 int clk_disable_unprepare (int ) ;
 struct lpc24xx_rtc* platform_get_drvdata (struct platform_device*) ;
 int rtc_writel (struct lpc24xx_rtc*,int ,int ) ;

__attribute__((used)) static int lpc24xx_rtc_remove(struct platform_device *pdev)
{
 struct lpc24xx_rtc *rtc = platform_get_drvdata(pdev);


 rtc_writel(rtc, LPC24XX_AMR, LPC24XX_ALARM_DISABLE);
 rtc_writel(rtc, LPC24XX_CIIR, 0);

 rtc_writel(rtc, LPC24XX_CCR, LPC178X_CCALEN);

 clk_disable_unprepare(rtc->clk_rtc);
 clk_disable_unprepare(rtc->clk_reg);

 return 0;
}
