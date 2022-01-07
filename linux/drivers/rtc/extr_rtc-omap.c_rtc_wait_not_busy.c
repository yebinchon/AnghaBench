
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct omap_rtc {int dummy; } ;


 int OMAP_RTC_STATUS_BUSY ;
 int OMAP_RTC_STATUS_REG ;
 int rtc_read (struct omap_rtc*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void rtc_wait_not_busy(struct omap_rtc *rtc)
{
 int count;
 u8 status;


 for (count = 0; count < 50; count++) {
  status = rtc_read(rtc, OMAP_RTC_STATUS_REG);
  if (!(status & OMAP_RTC_STATUS_BUSY))
   break;
  udelay(1);
 }

}
