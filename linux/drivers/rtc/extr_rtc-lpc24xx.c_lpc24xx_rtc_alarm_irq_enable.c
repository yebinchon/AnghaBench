
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc24xx_rtc {int dummy; } ;
struct device {int dummy; } ;


 int LPC24XX_ALARM_DISABLE ;
 int LPC24XX_AMR ;
 struct lpc24xx_rtc* dev_get_drvdata (struct device*) ;
 int rtc_writel (struct lpc24xx_rtc*,int ,int ) ;

__attribute__((used)) static int lpc24xx_rtc_alarm_irq_enable(struct device *dev, unsigned int enable)
{
 struct lpc24xx_rtc *rtc = dev_get_drvdata(dev);

 if (enable)
  rtc_writel(rtc, LPC24XX_AMR, 0);
 else
  rtc_writel(rtc, LPC24XX_AMR, LPC24XX_ALARM_DISABLE);

 return 0;
}
