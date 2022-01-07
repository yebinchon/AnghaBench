
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ tm_mon; scalar_t__ tm_mday; } ;
struct rtc_wkalrm {int enabled; TYPE_1__ time; } ;
struct device {int dummy; } ;
struct cdns_rtc {scalar_t__ regs; } ;


 scalar_t__ CDNS_RTC_CALAR ;
 int CDNS_RTC_CAL_D ;
 int CDNS_RTC_CAL_M ;
 int CDNS_RTC_MAX_REGS_TRIES ;
 scalar_t__ CDNS_RTC_STSR ;
 int CDNS_RTC_STSR_VTA_VCA ;
 scalar_t__ CDNS_RTC_TIMAR ;
 int EIO ;
 int FIELD_PREP (int ,int ) ;
 int bin2bcd (scalar_t__) ;
 int cdns_rtc_alarm_irq_enable (struct device*,int ) ;
 int cdns_rtc_time2reg (TYPE_1__*) ;
 struct cdns_rtc* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int cdns_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alarm)
{
 struct cdns_rtc *crtc = dev_get_drvdata(dev);
 int ret = -EIO;
 int tries;
 u32 timar, calar, stsr;

 cdns_rtc_alarm_irq_enable(dev, 0);

 timar = cdns_rtc_time2reg(&alarm->time);
 calar = FIELD_PREP(CDNS_RTC_CAL_D, bin2bcd(alarm->time.tm_mday))
       | FIELD_PREP(CDNS_RTC_CAL_M, bin2bcd(alarm->time.tm_mon + 1));


 for (tries = 0; tries < CDNS_RTC_MAX_REGS_TRIES; tries++) {
  writel(timar, crtc->regs + CDNS_RTC_TIMAR);
  writel(calar, crtc->regs + CDNS_RTC_CALAR);
  stsr = readl(crtc->regs + CDNS_RTC_STSR);

  if ((stsr & CDNS_RTC_STSR_VTA_VCA) == CDNS_RTC_STSR_VTA_VCA) {
   ret = 0;
   break;
  }
 }

 if (!ret)
  cdns_rtc_alarm_irq_enable(dev, alarm->enabled);
 return ret;
}
