
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_hour; int tm_min; int tm_sec; } ;
struct bd70528_rtc_day {int hour; int min; int sec; } ;


 int BD70528_MASK_RTC_HOUR ;
 int BD70528_MASK_RTC_MINUTE ;
 int BD70528_MASK_RTC_SEC ;
 int bin2bcd (int ) ;

__attribute__((used)) static inline void tmday2rtc(struct rtc_time *t, struct bd70528_rtc_day *d)
{
 d->sec &= ~BD70528_MASK_RTC_SEC;
 d->min &= ~BD70528_MASK_RTC_MINUTE;
 d->hour &= ~BD70528_MASK_RTC_HOUR;
 d->sec |= bin2bcd(t->tm_sec);
 d->min |= bin2bcd(t->tm_min);
 d->hour |= bin2bcd(t->tm_hour);
}
