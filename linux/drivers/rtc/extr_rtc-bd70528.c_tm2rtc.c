
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtc_time {scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_wday; scalar_t__ tm_mday; } ;
struct TYPE_2__ {int hour; } ;
struct bd70528_rtc_data {int year; int month; int week; int day; TYPE_1__ time; } ;


 int BD70528_MASK_RTC_DAY ;
 int BD70528_MASK_RTC_HOUR_24H ;
 int BD70528_MASK_RTC_HOUR_PM ;
 int BD70528_MASK_RTC_MONTH ;
 int BD70528_MASK_RTC_WEEK ;
 int bin2bcd (scalar_t__) ;
 int tmday2rtc (struct rtc_time*,TYPE_1__*) ;

__attribute__((used)) static inline void tm2rtc(struct rtc_time *t, struct bd70528_rtc_data *r)
{
 r->day &= ~BD70528_MASK_RTC_DAY;
 r->week &= ~BD70528_MASK_RTC_WEEK;
 r->month &= ~BD70528_MASK_RTC_MONTH;




 r->time.hour &= ~(BD70528_MASK_RTC_HOUR_PM | BD70528_MASK_RTC_HOUR_24H);

 tmday2rtc(t, &r->time);



 r->time.hour |= BD70528_MASK_RTC_HOUR_24H;
 r->day |= bin2bcd(t->tm_mday);
 r->week |= bin2bcd(t->tm_wday);
 r->month |= bin2bcd(t->tm_mon + 1);
 r->year = bin2bcd(t->tm_year - 100);
}
