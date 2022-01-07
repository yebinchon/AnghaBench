
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cdns_rtc {scalar_t__ regs; } ;


 scalar_t__ CDNS_RTC_CTLR ;
 int CDNS_RTC_CTLR_TIME_CAL ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void cdns_rtc_set_enabled(struct cdns_rtc *crtc, bool enabled)
{
 u32 reg = enabled ? 0x0 : CDNS_RTC_CTLR_TIME_CAL;

 writel(reg, crtc->regs + CDNS_RTC_CTLR);
}
