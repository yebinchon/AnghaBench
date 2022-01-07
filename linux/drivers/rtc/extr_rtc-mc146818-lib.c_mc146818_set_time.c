
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtc_time {unsigned int tm_year; int tm_mon; unsigned char tm_mday; unsigned char tm_hour; unsigned char tm_min; unsigned char tm_sec; } ;
struct TYPE_3__ {scalar_t__ revision; } ;
struct TYPE_4__ {scalar_t__ century; TYPE_1__ header; } ;


 unsigned char CMOS_READ (scalar_t__) ;
 int CMOS_WRITE (unsigned char,scalar_t__) ;
 int EINVAL ;
 scalar_t__ FADT2_REVISION_ID ;
 scalar_t__ RTC_ALWAYS_BCD ;
 scalar_t__ RTC_CONTROL ;
 scalar_t__ RTC_DAY_OF_MONTH ;
 scalar_t__ RTC_DEC_YEAR ;
 unsigned char RTC_DIV_RESET2 ;
 unsigned char RTC_DM_BINARY ;
 scalar_t__ RTC_FREQ_SELECT ;
 scalar_t__ RTC_HOURS ;
 scalar_t__ RTC_MINUTES ;
 scalar_t__ RTC_MONTH ;
 scalar_t__ RTC_SECONDS ;
 unsigned char RTC_SET ;
 scalar_t__ RTC_YEAR ;
 TYPE_2__ acpi_gbl_FADT ;
 void* bin2bcd (unsigned char) ;
 int rtc_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int mc146818_set_time(struct rtc_time *time)
{
 unsigned long flags;
 unsigned char mon, day, hrs, min, sec;
 unsigned char save_control, save_freq_select;
 unsigned int yrs;



 unsigned char century = 0;

 yrs = time->tm_year;
 mon = time->tm_mon + 1;
 day = time->tm_mday;
 hrs = time->tm_hour;
 min = time->tm_min;
 sec = time->tm_sec;

 if (yrs > 255)
  return -EINVAL;

 spin_lock_irqsave(&rtc_lock, flags);
 if (yrs > 169) {
  spin_unlock_irqrestore(&rtc_lock, flags);
  return -EINVAL;
 }

 if (yrs >= 100)
  yrs -= 100;

 if (!(CMOS_READ(RTC_CONTROL) & RTC_DM_BINARY)
     || RTC_ALWAYS_BCD) {
  sec = bin2bcd(sec);
  min = bin2bcd(min);
  hrs = bin2bcd(hrs);
  day = bin2bcd(day);
  mon = bin2bcd(mon);
  yrs = bin2bcd(yrs);
  century = bin2bcd(century);
 }

 save_control = CMOS_READ(RTC_CONTROL);
 CMOS_WRITE((save_control|RTC_SET), RTC_CONTROL);
 save_freq_select = CMOS_READ(RTC_FREQ_SELECT);
 CMOS_WRITE((save_freq_select|RTC_DIV_RESET2), RTC_FREQ_SELECT);




 CMOS_WRITE(yrs, RTC_YEAR);
 CMOS_WRITE(mon, RTC_MONTH);
 CMOS_WRITE(day, RTC_DAY_OF_MONTH);
 CMOS_WRITE(hrs, RTC_HOURS);
 CMOS_WRITE(min, RTC_MINUTES);
 CMOS_WRITE(sec, RTC_SECONDS);






 CMOS_WRITE(save_control, RTC_CONTROL);
 CMOS_WRITE(save_freq_select, RTC_FREQ_SELECT);

 spin_unlock_irqrestore(&rtc_lock, flags);

 return 0;
}
