
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns_rtc {scalar_t__ regs; } ;


 scalar_t__ CDNS_RTC_CTLR ;
 int CDNS_RTC_CTLR_TIME_CAL ;
 int readl (scalar_t__) ;

__attribute__((used)) static bool cdns_rtc_get_enabled(struct cdns_rtc *crtc)
{
 return !(readl(crtc->regs + CDNS_RTC_CTLR) & CDNS_RTC_CTLR_TIME_CAL);
}
