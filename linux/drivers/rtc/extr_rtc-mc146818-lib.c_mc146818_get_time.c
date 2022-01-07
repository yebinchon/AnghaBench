
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtc_time {unsigned char tm_sec; unsigned char tm_min; unsigned char tm_hour; unsigned char tm_mday; unsigned char tm_mon; unsigned char tm_year; } ;
struct TYPE_3__ {scalar_t__ revision; } ;
struct TYPE_4__ {scalar_t__ century; TYPE_1__ header; } ;


 void* CMOS_READ (scalar_t__) ;
 scalar_t__ FADT2_REVISION_ID ;
 unsigned int RTC_24H ;
 scalar_t__ RTC_ALWAYS_BCD ;
 scalar_t__ RTC_CONTROL ;
 scalar_t__ RTC_DAY_OF_MONTH ;
 scalar_t__ RTC_DEC_YEAR ;
 unsigned char RTC_DM_BINARY ;
 scalar_t__ RTC_HOURS ;
 scalar_t__ RTC_MINUTES ;
 scalar_t__ RTC_MONTH ;
 scalar_t__ RTC_SECONDS ;
 scalar_t__ RTC_YEAR ;
 TYPE_2__ acpi_gbl_FADT ;
 void* bcd2bin (unsigned char) ;
 scalar_t__ mc146818_is_updating () ;
 int mdelay (int) ;
 int rtc_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

unsigned int mc146818_get_time(struct rtc_time *time)
{
 unsigned char ctrl;
 unsigned long flags;
 unsigned char century = 0;
 if (mc146818_is_updating())
  mdelay(20);







 spin_lock_irqsave(&rtc_lock, flags);
 time->tm_sec = CMOS_READ(RTC_SECONDS);
 time->tm_min = CMOS_READ(RTC_MINUTES);
 time->tm_hour = CMOS_READ(RTC_HOURS);
 time->tm_mday = CMOS_READ(RTC_DAY_OF_MONTH);
 time->tm_mon = CMOS_READ(RTC_MONTH);
 time->tm_year = CMOS_READ(RTC_YEAR);
 ctrl = CMOS_READ(RTC_CONTROL);
 spin_unlock_irqrestore(&rtc_lock, flags);

 if (!(ctrl & RTC_DM_BINARY) || RTC_ALWAYS_BCD)
 {
  time->tm_sec = bcd2bin(time->tm_sec);
  time->tm_min = bcd2bin(time->tm_min);
  time->tm_hour = bcd2bin(time->tm_hour);
  time->tm_mday = bcd2bin(time->tm_mday);
  time->tm_mon = bcd2bin(time->tm_mon);
  time->tm_year = bcd2bin(time->tm_year);
  century = bcd2bin(century);
 }





 if (century > 20)
  time->tm_year += (century - 19) * 100;





 if (time->tm_year <= 69)
  time->tm_year += 100;

 time->tm_mon--;

 return RTC_24H;
}
