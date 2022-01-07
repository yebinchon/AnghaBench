
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sam9_rtc {int sclk; } ;
struct platform_device {int dummy; } ;


 int AT91_RTT_ALMIEN ;
 int AT91_RTT_RTTINCIEN ;
 int MR ;
 int clk_disable_unprepare (int ) ;
 struct sam9_rtc* platform_get_drvdata (struct platform_device*) ;
 int rtt_readl (struct sam9_rtc*,int ) ;
 int rtt_writel (struct sam9_rtc*,int ,int) ;

__attribute__((used)) static int at91_rtc_remove(struct platform_device *pdev)
{
 struct sam9_rtc *rtc = platform_get_drvdata(pdev);
 u32 mr = rtt_readl(rtc, MR);


 rtt_writel(rtc, MR, mr & ~(AT91_RTT_ALMIEN | AT91_RTT_RTTINCIEN));

 clk_disable_unprepare(rtc->sclk);

 return 0;
}
