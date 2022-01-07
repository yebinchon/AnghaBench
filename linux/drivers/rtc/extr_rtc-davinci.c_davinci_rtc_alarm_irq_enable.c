
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;
struct davinci_rtc {int dummy; } ;


 int PRTCSS_RTC_CCTRL ;
 int PRTCSS_RTC_CCTRL_AIEN ;
 int PRTCSS_RTC_CCTRL_ALMFLG ;
 int PRTCSS_RTC_CCTRL_DAEN ;
 int PRTCSS_RTC_CCTRL_HAEN ;
 int PRTCSS_RTC_CCTRL_MAEN ;
 int davinci_rtc_lock ;
 int davinci_rtcss_calendar_wait (struct davinci_rtc*) ;
 struct davinci_rtc* dev_get_drvdata (struct device*) ;
 int rtcss_read (struct davinci_rtc*,int ) ;
 int rtcss_write (struct davinci_rtc*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int davinci_rtc_alarm_irq_enable(struct device *dev,
     unsigned int enabled)
{
 struct davinci_rtc *davinci_rtc = dev_get_drvdata(dev);
 unsigned long flags;
 u8 rtc_cctrl = rtcss_read(davinci_rtc, PRTCSS_RTC_CCTRL);

 spin_lock_irqsave(&davinci_rtc_lock, flags);

 if (enabled)
  rtc_cctrl |= PRTCSS_RTC_CCTRL_DAEN |
        PRTCSS_RTC_CCTRL_HAEN |
        PRTCSS_RTC_CCTRL_MAEN |
        PRTCSS_RTC_CCTRL_ALMFLG |
        PRTCSS_RTC_CCTRL_AIEN;
 else
  rtc_cctrl &= ~PRTCSS_RTC_CCTRL_AIEN;

 davinci_rtcss_calendar_wait(davinci_rtc);
 rtcss_write(davinci_rtc, rtc_cctrl, PRTCSS_RTC_CCTRL);

 spin_unlock_irqrestore(&davinci_rtc_lock, flags);

 return 0;
}
