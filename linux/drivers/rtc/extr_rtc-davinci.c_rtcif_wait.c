
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct davinci_rtc {int dummy; } ;


 int PRTCIF_CTLR ;
 int PRTCIF_CTLR_BUSY ;
 int cpu_relax () ;
 int rtcif_read (struct davinci_rtc*,int ) ;

__attribute__((used)) static inline void rtcif_wait(struct davinci_rtc *davinci_rtc)
{
 while (rtcif_read(davinci_rtc, PRTCIF_CTLR) & PRTCIF_CTLR_BUSY)
  cpu_relax();
}
