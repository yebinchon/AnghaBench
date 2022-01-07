
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct davinci_rtc {int dummy; } ;


 int PRTCIF_CTLR ;
 int PRTCIF_CTLR_BENL_LSB ;
 int PRTCIF_CTLR_DIR ;
 int PRTCIF_LDATA ;
 int rtcif_read (struct davinci_rtc*,int ) ;
 int rtcif_wait (struct davinci_rtc*) ;
 int rtcif_write (struct davinci_rtc*,int,int ) ;

__attribute__((used)) static inline u8 rtcss_read(struct davinci_rtc *davinci_rtc, u8 addr)
{
 rtcif_wait(davinci_rtc);

 rtcif_write(davinci_rtc, PRTCIF_CTLR_DIR | PRTCIF_CTLR_BENL_LSB | addr,
      PRTCIF_CTLR);

 rtcif_wait(davinci_rtc);

 return rtcif_read(davinci_rtc, PRTCIF_LDATA);
}
