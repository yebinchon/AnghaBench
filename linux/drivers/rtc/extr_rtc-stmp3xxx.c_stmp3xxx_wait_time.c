
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp3xxx_rtc_data {scalar_t__ io; } ;


 int ETIME ;
 scalar_t__ STMP3XXX_RTC_STAT ;
 int STMP3XXX_RTC_STAT_STALE_SHIFT ;
 int readl (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int stmp3xxx_wait_time(struct stmp3xxx_rtc_data *rtc_data)
{
 int timeout = 5000;
 do {
  if (!(readl(rtc_data->io + STMP3XXX_RTC_STAT) &
    (0x80 << STMP3XXX_RTC_STAT_STALE_SHIFT)))
   return 0;
  udelay(1);
 } while (--timeout > 0);
 return (readl(rtc_data->io + STMP3XXX_RTC_STAT) &
  (0x80 << STMP3XXX_RTC_STAT_STALE_SHIFT)) ? -ETIME : 0;
}
