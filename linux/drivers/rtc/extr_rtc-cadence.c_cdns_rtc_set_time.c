
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtc_time {int tm_year; int tm_mday; int tm_mon; scalar_t__ tm_wday; } ;
struct device {int dummy; } ;
struct cdns_rtc {scalar_t__ regs; } ;


 scalar_t__ CDNS_RTC_CALR ;
 int CDNS_RTC_CAL_C ;
 int CDNS_RTC_CAL_D ;
 int CDNS_RTC_CAL_DAY ;
 int CDNS_RTC_CAL_M ;
 int CDNS_RTC_CAL_Y ;
 int CDNS_RTC_MAX_REGS_TRIES ;
 scalar_t__ CDNS_RTC_STSR ;
 int CDNS_RTC_STSR_VT_VC ;
 scalar_t__ CDNS_RTC_TIMR ;
 int EIO ;
 int FIELD_PREP (int ,scalar_t__) ;
 scalar_t__ bin2bcd (int) ;
 int cdns_rtc_set_enabled (struct cdns_rtc*,int) ;
 int cdns_rtc_time2reg (struct rtc_time*) ;
 struct cdns_rtc* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int cdns_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct cdns_rtc *crtc = dev_get_drvdata(dev);
 u32 timr, calr, stsr;
 int ret = -EIO;
 int year = tm->tm_year + 1900;
 int tries;

 cdns_rtc_set_enabled(crtc, 0);

 timr = cdns_rtc_time2reg(tm);

 calr = FIELD_PREP(CDNS_RTC_CAL_D, bin2bcd(tm->tm_mday))
      | FIELD_PREP(CDNS_RTC_CAL_M, bin2bcd(tm->tm_mon + 1))
      | FIELD_PREP(CDNS_RTC_CAL_Y, bin2bcd(year % 100))
      | FIELD_PREP(CDNS_RTC_CAL_C, bin2bcd(year / 100))
      | FIELD_PREP(CDNS_RTC_CAL_DAY, tm->tm_wday + 1);


 for (tries = 0; tries < CDNS_RTC_MAX_REGS_TRIES; tries++) {
  writel(timr, crtc->regs + CDNS_RTC_TIMR);
  writel(calr, crtc->regs + CDNS_RTC_CALR);
  stsr = readl(crtc->regs + CDNS_RTC_STSR);

  if ((stsr & CDNS_RTC_STSR_VT_VC) == CDNS_RTC_STSR_VT_VC) {
   ret = 0;
   break;
  }
 }

 cdns_rtc_set_enabled(crtc, 1);
 return ret;
}
