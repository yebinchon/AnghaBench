
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
struct davinci_rtc {int dummy; } ;


 int PRTCIF_CTLR ;
 unsigned long PRTCIF_CTLR_BENL_LSB ;
 int PRTCIF_LDATA ;
 int rtcif_wait (struct davinci_rtc*) ;
 int rtcif_write (struct davinci_rtc*,unsigned long,int ) ;

__attribute__((used)) static inline void rtcss_write(struct davinci_rtc *davinci_rtc,
          unsigned long val, u8 addr)
{
 rtcif_wait(davinci_rtc);

 rtcif_write(davinci_rtc, PRTCIF_CTLR_BENL_LSB | addr, PRTCIF_CTLR);
 rtcif_write(davinci_rtc, val, PRTCIF_LDATA);

 rtcif_wait(davinci_rtc);
}
