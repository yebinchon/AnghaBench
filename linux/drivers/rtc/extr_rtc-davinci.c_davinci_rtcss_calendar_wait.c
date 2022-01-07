
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct davinci_rtc {int dummy; } ;


 int PRTCSS_RTC_CCTRL ;
 int PRTCSS_RTC_CCTRL_CALBUSY ;
 int cpu_relax () ;
 int rtcss_read (struct davinci_rtc*,int ) ;

__attribute__((used)) static inline void davinci_rtcss_calendar_wait(struct davinci_rtc *davinci_rtc)
{
 while (rtcss_read(davinci_rtc, PRTCSS_RTC_CCTRL) &
        PRTCSS_RTC_CCTRL_CALBUSY)
  cpu_relax();
}
