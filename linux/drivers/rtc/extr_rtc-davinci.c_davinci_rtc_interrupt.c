
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct davinci_rtc {int rtc; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PRTCIF_INTFLG ;
 int PRTCIF_INTFLG_RTCSS ;
 int PRTCSS_RTC_CCTRL ;
 int PRTCSS_RTC_CCTRL_ALMFLG ;
 int PRTCSS_RTC_CTRL ;
 int PRTCSS_RTC_CTRL_TMRFLG ;
 unsigned long RTC_AF ;
 unsigned long RTC_IRQF ;
 unsigned long RTC_PF ;
 int rtc_update_irq (int ,int,unsigned long) ;
 int rtcif_read (struct davinci_rtc*,int ) ;
 int rtcif_write (struct davinci_rtc*,int,int ) ;
 int rtcss_read (struct davinci_rtc*,int ) ;
 int rtcss_write (struct davinci_rtc*,int,int ) ;

__attribute__((used)) static irqreturn_t davinci_rtc_interrupt(int irq, void *class_dev)
{
 struct davinci_rtc *davinci_rtc = class_dev;
 unsigned long events = 0;
 u32 irq_flg;
 u8 alm_irq, tmr_irq;
 u8 rtc_ctrl, rtc_cctrl;
 int ret = IRQ_NONE;

 irq_flg = rtcif_read(davinci_rtc, PRTCIF_INTFLG) &
    PRTCIF_INTFLG_RTCSS;

 alm_irq = rtcss_read(davinci_rtc, PRTCSS_RTC_CCTRL) &
    PRTCSS_RTC_CCTRL_ALMFLG;

 tmr_irq = rtcss_read(davinci_rtc, PRTCSS_RTC_CTRL) &
    PRTCSS_RTC_CTRL_TMRFLG;

 if (irq_flg) {
  if (alm_irq) {
   events |= RTC_IRQF | RTC_AF;
   rtc_cctrl = rtcss_read(davinci_rtc, PRTCSS_RTC_CCTRL);
   rtc_cctrl |= PRTCSS_RTC_CCTRL_ALMFLG;
   rtcss_write(davinci_rtc, rtc_cctrl, PRTCSS_RTC_CCTRL);
  } else if (tmr_irq) {
   events |= RTC_IRQF | RTC_PF;
   rtc_ctrl = rtcss_read(davinci_rtc, PRTCSS_RTC_CTRL);
   rtc_ctrl |= PRTCSS_RTC_CTRL_TMRFLG;
   rtcss_write(davinci_rtc, rtc_ctrl, PRTCSS_RTC_CTRL);
  }

  rtcif_write(davinci_rtc, PRTCIF_INTFLG_RTCSS,
        PRTCIF_INTFLG);
  rtc_update_irq(davinci_rtc->rtc, 1, events);

  ret = IRQ_HANDLED;
 }

 return ret;
}
